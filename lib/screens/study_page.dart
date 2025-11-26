import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import '../viewmodels/study_view_model.dart'; 

class StudyPage extends StatefulWidget {
  final String categoryName;
  final List<String> englishWords;

  const StudyPage({super.key, required this.categoryName, required this.englishWords});

  @override
  State<StudyPage> createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {
  late StudyViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _viewModel = StudyViewModel(englishWords: widget.englishWords);
    
    _viewModel.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  void _showMoreDetails() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Container(width: 40, height: 5, decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)))),
              const SizedBox(height: 20),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _viewModel.currentWord, 
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor)
                  ),
                  
                  if (_viewModel.currentPhonetic != null) 
                    Text(
                      _viewModel.currentPhonetic!, 
                      style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.grey)
                    ),
                ],
              ),
              
              const Divider(height: 30),
              const Text("PRZYKŁAD UŻYCIA:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey, letterSpacing: 1)),
              const SizedBox(height: 5),
              Text(_viewModel.currentExample != null ? '"${_viewModel.currentExample}"' : "Brak przykładu (sprawdź internet).", style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
              const SizedBox(height: 20),
              const Text("SYNONIMY:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey, letterSpacing: 1)),
              const SizedBox(height: 10),
              if (_viewModel.currentSynonyms.isNotEmpty) 
                Wrap(
                  spacing: 8.0, 
                  runSpacing: 4.0, 
                  children: _viewModel.currentSynonyms.map((syn) => Chip(label: Text(syn), backgroundColor: Theme.of(context).hintColor.withOpacity(0.2))).toList()
                ) 
              else 
                const Text("Brak synonimów.", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isFav = _viewModel.isCurrentWordFavorite;

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [IconButton(icon: const Icon(Icons.home), onPressed: () => Navigator.popUntil(context, (route) => route.isFirst))],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(color: Theme.of(context).primaryColor.withOpacity(0.8), borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Text(widget.categoryName, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Center(
              child: SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width * 0.85,
                child: FlipCard(
                  key: ValueKey(_viewModel.currentIndex),
                  direction: FlipDirection.HORIZONTAL,
                  front: _buildCardSide(
                    mainText: _viewModel.currentWord,
                    bottomText: _viewModel.currentDefinition,
                    isLoading: _viewModel.isLoading,
                    bgColor: const Color(0xFFF7A8D8).withOpacity(0.7),
                    textColor: Colors.black87,
                    label: "ANGIELSKI",
                    isFront: true,
                  ),
                  back: _buildCardSide(
                    mainText: _viewModel.isLoading ? "..." : (_viewModel.currentPolishTranslation ?? "..."),
                    bottomText: null,
                    isLoading: false,
                    bgColor: const Color(0xFFE0BBE4),
                    textColor: Colors.black87,
                    label: "POLSKI",
                    isFront: false,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          IconButton(
            iconSize: 60, 
            icon: Icon(isFav ? Icons.star : Icons.star_border, color: isFav ? Colors.amber : const Color(0xFFE0BBE4)), 
            onPressed: () => _viewModel.toggleFavorite(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _viewModel.currentIndex > 0 ? _viewModel.previousCard : null, 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300], foregroundColor: Colors.black87), 
                  child: const Text("Poprzednia")
                ),
                ElevatedButton(
                  onPressed: _viewModel.currentIndex < widget.englishWords.length - 1 ? _viewModel.nextCard : null, 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300], foregroundColor: Colors.black87), 
                  child: const Text("Następna")
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _buildCardSide({
    required String mainText,
    String? bottomText,
    required bool isLoading,
    required Color bgColor,
    required Color textColor,
    required String label,
    required bool isFront,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: const Offset(0, 5))],
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: textColor.withOpacity(0.5))),
                const SizedBox(height: 20),
                if (isLoading && isFront)
                   const CircularProgressIndicator(color: Colors.white)
                else
                  Text(
                    mainText,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: textColor),
                    textAlign: TextAlign.center
                  ),

                if (isFront && !isLoading) ...[
                  const SizedBox(height: 20),
                  Divider(color: textColor.withOpacity(0.3)),
                  const SizedBox(height: 10),
                  Text(bottomText ?? "...", style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: textColor.withOpacity(0.8)), textAlign: TextAlign.center, maxLines: 3, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 40),
                ]
              ],
            ),
          ),

          if (isFront && !isLoading)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: TextButton.icon(
                  onPressed: _showMoreDetails,
                  label: Text("Pokaż więcej", style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
