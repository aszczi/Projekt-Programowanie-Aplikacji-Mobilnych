import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../data/flashcard_data.dart';
import '../managers/favorites_manager.dart';

class StudyViewModel extends ChangeNotifier {
  final List<String> englishWords;
  
  // Stan
  int _currentIndex = 0;
  bool _isLoading = false;
  
  String? _currentDefinition;
  String? _currentPolishTranslation;
  String? _currentPhonetic;
  String? _currentExample;
  List<String> _currentSynonyms = [];

  //Gettery do UI
  int get currentIndex => _currentIndex;
  bool get isLoading => _isLoading;
  String? get currentDefinition => _currentDefinition;
  String? get currentPolishTranslation => _currentPolishTranslation;
  String? get currentPhonetic => _currentPhonetic;
  String? get currentExample => _currentExample;
  List<String> get currentSynonyms => _currentSynonyms;
  
  String get currentWord => englishWords[_currentIndex];
  bool get isCurrentWordFavorite => FavoritesManager.isFavorite(currentWord);

  StudyViewModel({required this.englishWords}) {
    fetchData();
  }

  Future<void> fetchData() async {
    final word = englishWords[_currentIndex].toLowerCase();

    _isLoading = true;
    _currentDefinition = null;
    _currentPolishTranslation = null;
    _currentPhonetic = null;
    _currentExample = null;
    _currentSynonyms = [];
    notifyListeners();

    String def = "Brak definicji.";
    String plTrans = "Brak tłumaczenia";
    String? phonetic;
    String? example;
    Set<String> collectedSynonyms = {};
    bool apiSuccess = false;

    try {
      final urlDetails = Uri.parse('https://freedictionaryapi.com/api/v1/entries/en/$word');
      final urlTranslation = Uri.parse('https://freedictionaryapi.com/api/v1/entries/en/$word?translations=true');

      final results = await Future.wait([
        http.get(urlDetails),
        http.get(urlTranslation),
      ]).timeout(const Duration(seconds: 3));

      final responseDetails = results[0];
      final responseTranslation = results[1];


      if (responseDetails.statusCode == 200) {
        final dynamic decoded = json.decode(responseDetails.body);
        if (decoded is List && decoded.isNotEmpty) {
          apiSuccess = true;
          var entry = decoded[0];

          // Wymowa
          if (entry['phonetic'] != null) {
            phonetic = entry['phonetic'];
          }
          if (phonetic == null && entry['phonetics'] != null) {
            for (var p in entry['phonetics']) {
              if (p['text'] != null && p['text'].toString().isNotEmpty) {
                phonetic = p['text'];
                break;
              }
            }
          }
          if (phonetic == null && entry['pronunciations'] != null) {
            for (var p in entry['pronunciations']) {
              if (p['text'] != null) {
                phonetic = p['text'];
                break;
              }
            }
          }

          // Definicje, Przykłady, Synonimy
          if (entry['senses'] != null && (entry['senses'] as List).isNotEmpty) {
            var firstSense = entry['senses'][0];
            def = firstSense['definition'] ?? "Brak";
            if (firstSense['examples'] != null && (firstSense['examples'] as List).isNotEmpty) {
              example = firstSense['examples'][0].toString();
            }
            for (var sense in entry['senses']) {
              if (sense['synonyms'] != null) {
                collectedSynonyms.addAll(List<String>.from(sense['synonyms']));
              }
            }
          }
          if (entry['synonyms'] != null) {
            collectedSynonyms.addAll(List<String>.from(entry['synonyms']));
          }
        }
      }

      // Tłumaczenie
      if (responseTranslation.statusCode == 200) {
        final dynamic decoded = json.decode(responseTranslation.body);
        if (decoded is List && decoded.isNotEmpty) {
          bool foundTrans = false;
          for (var entry in decoded) {
            if (entry['senses'] != null) {
              for (var sense in entry['senses']) {
                if (sense['translations'] != null) {
                  for (var trans in sense['translations']) {
                    if (trans['language'] != null && trans['language']['code'] == 'pl') {
                      plTrans = trans['word'];
                      foundTrans = true;
                      break;
                    }
                  }
                }
                if (foundTrans) break;
              }
            }
            if (foundTrans) break;
          }
        }
      }
    } catch (e) {
      debugPrint("Błąd API/Timeout: $e");
      apiSuccess = false;
    }

    //Offline
    if (phonetic == null) {
      final offlineEntry = FlashcardData.offlineData[word];
      if (offlineEntry != null && offlineEntry['phonetic'] != null) {
        phonetic = offlineEntry['phonetic'];
      }
    }

    bool useOffline = !apiSuccess || plTrans == "Brak tłumaczenia" || def == "Brak definicji.";

    if (useOffline) {
      final offlineData = FlashcardData.offlineData[word];
      if (offlineData != null) {
        plTrans = offlineData['pl'] ?? plTrans;
        def = offlineData['def'] ?? def;
        example = offlineData['ex'] ?? example;
        if (offlineData.containsKey('synonyms')) {
          collectedSynonyms.addAll(List<String>.from(offlineData['synonyms']));
        }
      } else if (!apiSuccess) {
        plTrans = "Brak połączenia";
        def = "Brak danych offline.";
      }
    }

    // Aktualizacja stanu
    _currentDefinition = def;
    _currentPolishTranslation = plTrans;
    _currentPhonetic = phonetic;
    _currentExample = example;
    
    var sortedList = collectedSynonyms.toList()..sort();
    _currentSynonyms = sortedList.take(5).toList();
    
    _isLoading = false;
    notifyListeners();
  }

  void nextCard() {
    if (_currentIndex < englishWords.length - 1) {
      _currentIndex++;
      fetchData();
    }
  }

  void previousCard() {
    if (_currentIndex > 0) {
      _currentIndex--;
      fetchData();
    }
  }

  Future<void> toggleFavorite() async {
    await FavoritesManager.toggleFavorite(currentWord);
    notifyListeners();
  }
}