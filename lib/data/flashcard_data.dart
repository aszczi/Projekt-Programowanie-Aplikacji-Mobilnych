class FlashcardData {

  static final Map<String, List<String>> categories = {
    'Podróże': [
      'map', 'guide', 'bus', 'city', 'flight', 'travel', 'trip',
      'tourist', 'airport', 'ticket', 'island',
    ],
    'Jedzenie': [
      'meat', 'dinner', 'salad', 'soup', 'fish',
      'banana', 'orange', 'vegetable',
      'salt', 'coffee', 'bread', 'cheese', 'egg', 'chicken',
    ],
    'Praca': [
      'project', 'email', 'manager', 'job', 'task', 'work', 'office', 'boss',
      'report', 'phone', 'worker', 'colleague',
      'shop', 'money', 'pay', 'holiday', 'weekend',
    ],
    'Natura': [
      'hill', 'wind', 'flower', 'forest', 'ocean', 'island', 'desert',
      'cloud', 'sun', 'star',
    ],
    'Uczucia': [
      'happy', 'thirsty', 'sleepy', 'scared', 'bored', 'calm',
      'surprised', 'shy', 'confused',
    ],
    'Dom': [
      'kitchen', 'garden', 'home',
      'door', 'window', 'roof', 'chair', 'bed',
      'sofa', 'key', 'stairs',
    ],
    'Szkoła': [
      'school', 'notebook', 'class', 'homework',
      'grade', 'teacher', 'lesson', 'test',
      'rubber', 'chair', 'blackboard', 'subject',
    ],
    'Zakupy': [
      'sale', 'discount', 'expensive',
      'seller', 'shop', 'store', 'money', 'price',
      'basket', 'queue', 'size', 'clothes',
    ],
    'Zdrowie': [
      'medicine', 'doctor', 'toothache', 'hospital',
      'fever', 'cough', 'nurse', 'clinic',
      'flu', 'pain', 'headache', 'bandage', 'exercise',
    ],
    'Technologia': [
      'email', 'website', 'laptop', 'smartphone',
      'mouse', 'video',
    ],
  };

  //BAZA DANYCH OFFLINE
  static final Map<String, Map<String, dynamic>> offlineData = {
    // PODRÓŻE
    'map': {'pl': 'mapa', 'def': 'A diagram representation of an area.', 'ex': 'I need a map of the city.', 'synonyms': ['chart', 'diagram', 'plan', 'graph'], 'phonetic': '/mæp/'},
    'guide': {'pl': 'przewodnik', 'def': 'A person who leads or directs other people.', 'ex': 'The tour guide was very friendly.', 'synonyms': ['leader', 'conductor', 'director', 'escort'], 'phonetic': '/gaɪd/'},
    'bus': {'pl': 'autobus', 'def': 'A large motor vehicle carrying passengers.', 'ex': 'We go to school by bus.', 'synonyms': ['coach', 'omnibus', 'vehicle'], 'phonetic': '/bʌs/'},
    'city': {'pl': 'miasto', 'def': 'A large town.', 'ex': 'New York is a big city.', 'synonyms': ['town', 'metropolis', 'municipality', 'urban area'], 'phonetic': '/ˈsɪti/'},
    'flight': {'pl': 'lot', 'def': 'The action or process of flying.', 'ex': 'The flight was delayed.', 'synonyms': ['flying', 'aviation', 'air travel', 'soaring'], 'phonetic': '/flaɪt/'},
    'travel': {'pl': 'podróżować', 'def': 'Make a journey.', 'ex': 'I love to travel.', 'synonyms': ['journey', 'tour', 'voyage', 'roam'], 'phonetic': '/ˈtrævl/'},
    'trip': {'pl': 'wycieczka', 'def': 'A journey or excursion.', 'ex': 'School trip to the zoo.', 'synonyms': ['excursion', 'journey', 'outing', 'expedition'], 'phonetic': '/trɪp/'},
    'tourist': {'pl': 'turysta', 'def': 'A person who is travelling for pleasure.', 'ex': 'The city is full of tourists.', 'synonyms': ['traveler', 'visitor', 'sightseer', 'vacationer'], 'phonetic': '/ˈtʊərɪst/'},
    'airport': {'pl': 'lotnisko', 'def': 'A complex of runways and buildings for aircraft.', 'ex': 'We arrived at the airport early.', 'synonyms': ['airfield', 'aerodrome', 'terminal', 'hub'], 'phonetic': '/ˈeəpɔːt/'},
    'ticket': {'pl': 'bilet', 'def': 'A piece of paper giving the holder a right to admission.', 'ex': 'Where is my train ticket?', 'synonyms': ['pass', 'coupon', 'voucher', 'token'], 'phonetic': '/ˈtɪkɪt/'},
    'island': {'pl': 'wyspa', 'def': 'A piece of land surrounded by water.', 'ex': 'They live on an island.', 'synonyms': ['isle', 'atoll', 'archipelago', 'reef'], 'phonetic': '/ˈaɪlənd/'},

    // JEDZENIE
    'meat': {'pl': 'mięso', 'def': 'The flesh of an animal as food.', 'ex': 'I do not eat meat.', 'synonyms': ['flesh', 'muscle', 'food'], 'phonetic': '/miːt/'},
    'dinner': {'pl': 'obiad / kolacja', 'def': 'The main meal of the day.', 'ex': 'Dinner is ready.', 'synonyms': ['supper', 'evening meal', 'feast', 'banquet'], 'phonetic': '/ˈdɪnər/'},
    'salad': {'pl': 'sałatka', 'def': 'A cold dish of various mixtures of raw or cooked vegetables.', 'ex': 'I ate a fresh salad for lunch.', 'synonyms': ['greens', 'slaw', 'tossed salad'], 'phonetic': '/ˈsæləd/'},
    'soup': {'pl': 'zupa', 'def': 'A liquid dish made by boiling meat or vegetables.', 'ex': 'Tomato soup is tasty.', 'synonyms': ['broth', 'stew', 'chowder', 'potage'], 'phonetic': '/suːp/'},
    'fish': {'pl': 'ryba', 'def': 'A limbless cold-blooded vertebrate animal with gills and fins.', 'ex': 'He caught a big fish.', 'synonyms': ['seafood', 'marine life', 'catch'], 'phonetic': '/fɪʃ/'},
    'banana': {'pl': 'banan', 'def': 'A long curved fruit which grows in clusters.', 'ex': 'Monkeys love bananas.', 'synonyms': ['fruit', 'plantain', 'tropical fruit'], 'phonetic': '/bəˈnɑːnə/'},
    'orange': {'pl': 'pomarańcza', 'def': 'A round juicy citrus fruit with a tough bright reddish-yellow rind.', 'ex': 'I drank a glass of orange juice.', 'synonyms': ['citrus', 'tangerine', 'mandarin'], 'phonetic': '/ˈɒrɪndʒ/'},
    'vegetable': {'pl': 'warzywo', 'def': 'A plant or part of a plant used as food.', 'ex': 'Eat your vegetables to stay healthy.', 'synonyms': ['veggie', 'plant', 'greens', 'produce'], 'phonetic': '/ˈvɛdʒtəbl/'},
    'salt': {'pl': 'sól', 'def': 'A white crystalline substance used for seasoning or preserving food.', 'ex': 'Please pass the salt.', 'synonyms': ['sodium', 'seasoning', 'flavoring'], 'phonetic': '/sɔːlt/'},
    'coffee': {'pl': 'kawa', 'def': 'A hot drink made from roasted coffee beans.', 'ex': 'I drink coffee every morning.', 'synonyms': ['java', 'espresso', 'brew', 'caffeine'], 'phonetic': '/ˈkɒfi/'},
    'bread': {'pl': 'chleb', 'def': 'Food made of flour, water, and yeast.', 'ex': 'Fresh bread smells good.', 'synonyms': ['loaf', 'dough', 'pastry', 'roll'], 'phonetic': '/brɛd/'},
    'cheese': {'pl': 'ser', 'def': 'A food made from the pressed curds of milk.', 'ex': 'I like cheese on my sandwich.', 'synonyms': ['cheddar', 'curd', 'brie', 'gouda'], 'phonetic': '/tʃiːz/'},
    'egg': {'pl': 'jajko', 'def': 'An oval object laid by a female bird, usually eaten as food.', 'ex': 'I had a boiled egg for breakfast.', 'synonyms': ['ovum', 'roe', 'spawn'], 'phonetic': '/ɛɡ/'},
    'chicken': {'pl': 'kurczak', 'def': 'A domestic fowl kept for its eggs or meat.', 'ex': 'We are having roast chicken tonight.', 'synonyms': ['poultry', 'fowl', 'hen', 'rooster'], 'phonetic': '/ˈtʃɪkɪn/'},

    // PRACA
    'project': {'pl': 'projekt', 'def': 'An individual or collaborative enterprise that is carefully planned.', 'ex': 'This is a very important project.', 'synonyms': ['plan', 'scheme', 'venture', 'assignment'], 'phonetic': '/ˈprɒdʒɛkt/'},
    'email': {'pl': 'e-mail', 'def': 'Messages distributed by electronic means.', 'ex': 'I sent an email to my boss.', 'synonyms': ['message', 'electronic mail', 'correspondence', 'communication'], 'phonetic': '/ˈiːmeɪl/'},
    'manager': {'pl': 'kierownik', 'def': 'A person responsible for controlling or administering an organization.', 'ex': 'The manager is in a meeting.', 'synonyms': ['boss', 'director', 'supervisor', 'executive'], 'phonetic': '/ˈmænɪdʒər/'},
    'job': {'pl': 'praca / zawód', 'def': 'A paid position of regular employment.', 'ex': 'She loves her new job.', 'synonyms': ['occupation', 'profession', 'career', 'work'], 'phonetic': '/dʒɒb/'},
    'task': {'pl': 'zadanie', 'def': 'A piece of work to be done or undertaken.', 'ex': 'I have a difficult task to finish.', 'synonyms': ['duty', 'job', 'chore', 'assignment'], 'phonetic': '/tɑːsk/'},
    'work': {'pl': 'praca', 'def': 'Activity involving mental or physical effort.', 'ex': 'I have a lot of work to do.', 'synonyms': ['labor', 'toil', 'effort', 'employment'], 'phonetic': '/wɜːk/'},
    'office': {'pl': 'biuro', 'def': 'A room or building used for commercial or professional work.', 'ex': 'He works in a large office.', 'synonyms': ['workplace', 'bureau', 'agency', 'studio'], 'phonetic': '/ˈɒfɪs/'},
    'boss': {'pl': 'szef', 'def': 'A person in charge of a worker or organization.', 'ex': 'My boss is very demanding.', 'synonyms': ['employer', 'manager', 'chief', 'leader'], 'phonetic': '/bɒs/'},
    'report': {'pl': 'raport', 'def': 'An account given of a particular matter.', 'ex': 'I need to write a monthly report.', 'synonyms': ['account', 'record', 'statement', 'description'], 'phonetic': '/rɪˈpɔːt/'},
    'phone': {'pl': 'telefon', 'def': 'A device used for voice communication.', 'ex': 'Answer the phone, please.', 'synonyms': ['telephone', 'mobile', 'cellphone', 'handset'], 'phonetic': '/fəʊn/'},
    'worker': {'pl': 'pracownik', 'def': 'A person who does a specified type of work.', 'ex': 'He is a hard worker.', 'synonyms': ['employee', 'laborer', 'staff', 'operator'], 'phonetic': '/ˈwɜːkər/'},
    'colleague': {'pl': 'kolega z pracy', 'def': 'A person with whom one works.', 'ex': 'I am going to lunch with a colleague.', 'synonyms': ['coworker', 'associate', 'partner', 'teammate'], 'phonetic': '/ˈkɒliːɡ/'},
    'shop': {'pl': 'sklep', 'def': 'A building or part of a building where goods are sold.', 'ex': 'I am going to the shop.', 'synonyms': ['store', 'boutique', 'market', 'outlet'], 'phonetic': '/ʃɒp/'},
    'money': {'pl': 'pieniądze', 'def': 'A current medium of exchange in the form of coins and banknotes.', 'ex': 'Time is money.', 'synonyms': ['cash', 'currency', 'funds', 'capital'], 'phonetic': '/ˈmʌni/'},
    'pay': {'pl': 'płaca / płacić', 'def': 'Give money that is due for work done or goods received.', 'ex': 'I pay my bills online.', 'synonyms': ['salary', 'wage', 'payment', 'income'], 'phonetic': '/peɪ/'},
    'holiday': {'pl': 'wakacje / święto', 'def': 'An extended period of leisure and recreation.', 'ex': 'We are going on holiday next week.', 'synonyms': ['vacation', 'break', 'leave', 'recess'], 'phonetic': '/ˈhɒlədeɪ/'},
    'weekend': {'pl': 'weekend', 'def': 'The period from Saturday to Sunday.', 'ex': 'Have a nice weekend!', 'synonyms': ['days off', 'end of the week', 'break'], 'phonetic': '/wiːkˈɛnd/'},

    // NATURA
    'hill': {'pl': 'wzgórze', 'def': 'A naturally raised area of land, not as high as a mountain.', 'ex': 'The house stands on a hill.', 'synonyms': ['mound', 'knoll', 'elevation', 'slope'], 'phonetic': '/hɪl/'},
    'wind': {'pl': 'wiatr', 'def': 'The perceptible natural movement of the air.', 'ex': 'The wind is blowing hard.', 'synonyms': ['breeze', 'gust', 'gale', 'draft'], 'phonetic': '/wɪnd/'},
    'flower': {'pl': 'kwiat', 'def': 'The seed-bearing part of a plant.', 'ex': 'This flower smells beautiful.', 'synonyms': ['blossom', 'bloom', 'plant', 'flora'], 'phonetic': '/ˈflaʊər/'},
    'forest': {'pl': 'las', 'def': 'A large area covered chiefly with trees.', 'ex': 'We went for a walk in the forest.', 'synonyms': ['woods', 'woodland', 'jungle', 'grove'], 'phonetic': '/ˈfɒrɪst/'},
    'ocean': {'pl': 'ocean', 'def': 'A very large expanse of sea.', 'ex': 'The Atlantic Ocean is vast.', 'synonyms': ['sea', 'deep', 'waters', 'blue'], 'phonetic': '/ˈəʊʃən/'},
    'desert': {'pl': 'pustynia', 'def': 'A dry, barren area of land, especially one covered with sand.', 'ex': 'Camels live in the desert.', 'synonyms': ['wasteland', 'sand', 'dunes', 'wilderness'], 'phonetic': '/ˈdɛzət/'},
    'cloud': {'pl': 'chmura', 'def': 'A visible mass of condensed water vapor floating in the atmosphere.', 'ex': 'There is not a single cloud in the sky.', 'synonyms': ['vapor', 'mist', 'fog', 'haze'], 'phonetic': '/klaʊd/'},
    'sun': {'pl': 'słońce', 'def': 'The star around which the earth orbits.', 'ex': 'The sun is shining brightly.', 'synonyms': ['star', 'sunlight', 'daylight', 'rays'], 'phonetic': '/sʌn/'},
    'star': {'pl': 'gwiazda', 'def': 'A fixed luminous point in the night sky.', 'ex': 'Look at that bright star.', 'synonyms': ['celestial body', 'sun', 'asteroid'], 'phonetic': '/stɑːr/'},

    // UCZUCIA
    'happy': {'pl': 'szczęśliwy', 'def': 'Feeling or showing pleasure.', 'ex': 'I am so happy today.', 'synonyms': ['cheerful', 'joyful', 'glad', 'delighted'], 'phonetic': '/ˈhæpi/'},
    'thirsty': {'pl': 'spragniony', 'def': 'Feeling a need to drink.', 'ex': 'I am thirsty after the run.', 'synonyms': ['dehydrated', 'parched', 'dry'], 'phonetic': '/ˈθɜːsti/'},
    'sleepy': {'pl': 'śpiący', 'def': 'Ready to fall asleep.', 'ex': 'I feel very sleepy.', 'synonyms': ['tired', 'drowsy', 'lethargic', 'fatigued'], 'phonetic': '/ˈsliːpi/'},
    'scared': {'pl': 'przestraszony', 'def': 'Fearful; frightened.', 'ex': 'He is scared of spiders.', 'synonyms': ['afraid', 'frightened', 'terrified', 'fearful'], 'phonetic': '/skeəd/'},
    'bored': {'pl': 'znudzony', 'def': 'Feeling weary because one is unoccupied or lacks interest.', 'ex': 'The children were bored.', 'synonyms': ['uninterested', 'weary', 'tired', 'dull'], 'phonetic': '/bɔːd/'},
    'calm': {'pl': 'spokojny', 'def': 'Not showing or feeling nervousness, anger, or other emotions.', 'ex': 'Stay calm and carry on.', 'synonyms': ['peaceful', 'relaxed', 'serene', 'tranquil'], 'phonetic': '/kɑːm/'},
    'surprised': {'pl': 'zaskoczony', 'def': 'Feeling or showing surprise.', 'ex': 'She was surprised by the gift.', 'synonyms': ['amazed', 'astonished', 'shocked', 'startled'], 'phonetic': '/səˈpraɪzd/'},
    'shy': {'pl': 'nieśmiały', 'def': 'Being reserved or having or showing nervousness.', 'ex': 'He is too shy to speak.', 'synonyms': ['bashful', 'timid', 'reserved', 'introverted'], 'phonetic': '/ʃaɪ/'},
    'confused': {'pl': 'zmieszany / zdezorientowany', 'def': 'Unable to think clearly; bewildered.', 'ex': 'I am confused by these instructions.', 'synonyms': ['puzzled', 'baffled', 'lost', 'uncertain'], 'phonetic': '/kənˈfjuːzd/'},

    // DOM
    'kitchen': {'pl': 'kuchnia', 'def': 'A room where food is prepared and cooked.', 'ex': 'The kitchen is clean.', 'synonyms': ['cookhouse', 'galley', 'mess', 'pantry'], 'phonetic': '/ˈkɪtʃɪn/'},
    'garden': {'pl': 'ogród', 'def': 'A piece of ground used for growing flowers, fruit, or vegetables.', 'ex': 'She is planting roses in the garden.', 'synonyms': ['yard', 'park', 'plot', 'patch'], 'phonetic': '/ˈɡɑːdn/'},
    'home': {'pl': 'dom', 'def': 'The place where one lives permanently.', 'ex': 'I want to go home.', 'synonyms': ['house', 'residence', 'dwelling', 'abode'], 'phonetic': '/həʊm/'},
    'door': {'pl': 'drzwi', 'def': 'A hinged, sliding, or revolving barrier at the entrance to a building.', 'ex': 'Please close the door.', 'synonyms': ['entrance', 'gateway', 'entry', 'exit'], 'phonetic': '/dɔːr/'},
    'window': {'pl': 'okno', 'def': 'An opening in the wall or roof of a building.', 'ex': 'Look out the window.', 'synonyms': ['opening', 'pane', 'glass', 'skylight'], 'phonetic': '/ˈwɪndəʊ/'},
    'roof': {'pl': 'dach', 'def': 'The structure forming the upper covering of a building.', 'ex': 'The cat is on the roof.', 'synonyms': ['ceiling', 'cover', 'top', 'canopy'], 'phonetic': '/ruːf/'},
    'chair': {'pl': 'krzesło', 'def': 'A separate seat for one person.', 'ex': 'Sit on this chair.', 'synonyms': ['seat', 'stool', 'bench', 'armchair'], 'phonetic': '/tʃeər/'},
    'bed': {'pl': 'łóżko', 'def': 'A piece of furniture for sleep or rest.', 'ex': 'It is time to go to bed.', 'synonyms': ['cot', 'berth', 'bunk', 'mattress'], 'phonetic': '/bɛd/'},
    'sofa': {'pl': 'sofa / kanapa', 'def': 'A long upholstered seat with a back and arms.', 'ex': 'The sofa is very comfortable.', 'synonyms': ['couch', 'settee', 'divan', 'loveseat'], 'phonetic': '/ˈsəʊfə/'},
    'key': {'pl': 'klucz', 'def': 'A small metal instrument used for opening a lock.', 'ex': 'I lost my car key.', 'synonyms': ['opener', 'code', 'passkey'], 'phonetic': '/kiː/'},
    'stairs': {'pl': 'schody', 'def': 'A set of steps leading from one floor of a building to another.', 'ex': 'Walk up the stairs.', 'synonyms': ['staircase', 'steps', 'stairway', 'flight'], 'phonetic': '/steəz/'},

    // SZKOŁA
    'school': {'pl': 'szkoła', 'def': 'An institution for educating children.', 'ex': 'My son goes to school.', 'synonyms': ['academy', 'college', 'institution', 'university'], 'phonetic': '/skuːl/'},
    'notebook': {'pl': 'zeszyt', 'def': 'A small book with blank or ruled pages for writing notes.', 'ex': 'Write it down in your notebook.', 'synonyms': ['notepad', 'journal', 'diary', 'pad'], 'phonetic': '/ˈnəʊtbʊk/'},
    'class': {'pl': 'klasa / lekcja', 'def': 'A group of students or a period of time for teaching.', 'ex': 'The class starts at 8 AM.', 'synonyms': ['lesson', 'course', 'group', 'grade'], 'phonetic': '/klɑːs/'},
    'homework': {'pl': 'praca domowa', 'def': 'Schoolwork that a student is required to do at home.', 'ex': 'I have a lot of homework.', 'synonyms': ['assignment', 'coursework', 'study', 'task'], 'phonetic': '/ˈhəʊmwɜːk/'},
    'grade': {'pl': 'ocena / stopień', 'def': 'A particular level of rank, quality, or proficiency.', 'ex': 'She got a good grade.', 'synonyms': ['mark', 'score', 'rank', 'level'], 'phonetic': '/ɡreɪd/'},
    'teacher': {'pl': 'nauczyciel', 'def': 'A person who teaches, especially in a school.', 'ex': 'The teacher explained the lesson.', 'synonyms': ['educator', 'instructor', 'tutor', 'lecturer'], 'phonetic': '/ˈtiːtʃər/'},
    'lesson': {'pl': 'lekcja', 'def': 'A period of learning or teaching.', 'ex': 'The math lesson was hard.', 'synonyms': ['class', 'session', 'period', 'lecture'], 'phonetic': '/ˈlɛsn/'},
    'test': {'pl': 'test / sprawdzian', 'def': 'A procedure intended to establish the quality or performance of something.', 'ex': 'We have a history test tomorrow.', 'synonyms': ['exam', 'examination', 'quiz', 'assessment'], 'phonetic': '/tɛst/'},
    'rubber': {'pl': 'gumka do mazania', 'def': 'A piece of rubber used for erasing pencil marks.', 'ex': 'Can I borrow your rubber?', 'synonyms': ['eraser', 'gum'], 'phonetic': '/ˈrʌbər/'},
    'blackboard': {'pl': 'tablica', 'def': 'A large board with a smooth dark surface attached to a wall.', 'ex': 'The teacher writes on the blackboard.', 'synonyms': ['chalkboard', 'board', 'whiteboard'], 'phonetic': '/ˈblækbɔːd/'},
    'subject': {'pl': 'przedmiot', 'def': 'A branch of knowledge studied or taught in a school.', 'ex': 'My favorite subject is English.', 'synonyms': ['topic', 'course', 'theme', 'discipline'], 'phonetic': '/ˈsʌbdʒɪkt/'},

    // ZAKUPY
    'sale': {'pl': 'wyprzedaż / sprzedaż', 'def': 'The exchange of a commodity for money.', 'ex': 'These shoes are on sale.', 'synonyms': ['deal', 'transaction', 'selling', 'bargain'], 'phonetic': '/seɪl/'},
    'discount': {'pl': 'zniżka', 'def': 'A deduction from the usual cost of something.', 'ex': 'I got a 20% discount.', 'synonyms': ['reduction', 'rebate', 'deduction', 'concession'], 'phonetic': '/ˈdɪskaʊnt/'},
    'expensive': {'pl': 'drogi', 'def': 'Costing a lot of money.', 'ex': 'This car is too expensive.', 'synonyms': ['costly', 'pricey', 'valuable', 'dear'], 'phonetic': '/ɪkˈspɛnsɪv/'},
    'seller': {'pl': 'sprzedawca', 'def': 'A person who sells something.', 'ex': 'The seller was very helpful.', 'synonyms': ['vendor', 'merchant', 'trader', 'dealer'], 'phonetic': '/ˈsɛlər/'},
    'store': {'pl': 'sklep / magazyn', 'def': 'A retail establishment selling items to the public.', 'ex': 'The grocery store is open.', 'synonyms': ['shop', 'market', 'outlet', 'depot'], 'phonetic': '/stɔːr/'},
    'price': {'pl': 'cena', 'def': 'The amount of money expected, required, or given in payment.', 'ex': 'What is the price of this?', 'synonyms': ['cost', 'value', 'amount', 'charge'], 'phonetic': '/praɪs/'},
    'basket': {'pl': 'koszyk', 'def': 'A container used to hold or carry things.', 'ex': 'Put the apples in the basket.', 'synonyms': ['container', 'holder', 'bin', 'hamper'], 'phonetic': '/ˈbɑːskɪt/'},
    'queue': {'pl': 'kolejka', 'def': 'A line or sequence of people or vehicles awaiting their turn.', 'ex': 'There was a long queue at the checkout.', 'synonyms': ['line', 'row', 'file', 'procession'], 'phonetic': '/kjuː/'},
    'size': {'pl': 'rozmiar', 'def': 'The relative extent of something.', 'ex': 'Do you have this in a smaller size?', 'synonyms': ['dimension', 'magnitude', 'volume', 'extent'], 'phonetic': '/saɪz/'},
    'clothes': {'pl': 'ubrania', 'def': 'Items worn to cover the body.', 'ex': 'She bought some new clothes.', 'synonyms': ['apparel', 'garments', 'attire', 'clothing'], 'phonetic': '/kləʊðz/'},

    // ZDROWIE
    'medicine': {'pl': 'lekarstwo', 'def': 'A compound or preparation used for the treatment of disease.', 'ex': 'Take this medicine twice a day.', 'synonyms': ['medication', 'drug', 'remedy', 'cure'], 'phonetic': '/ˈmɛdsɪn/'},
    'doctor': {'pl': 'lekarz', 'def': 'A qualified practitioner of medicine.', 'ex': 'You should see a doctor.', 'synonyms': ['physician', 'medic', 'specialist', 'surgeon'], 'phonetic': '/ˈdɒktər/'},
    'toothache': {'pl': 'ból zęba', 'def': 'Pain in a tooth or teeth.', 'ex': 'I have a terrible toothache.', 'synonyms': ['pain', 'discomfort', 'ache'], 'phonetic': '/ˈtuːθeɪk/'},
    'hospital': {'pl': 'szpital', 'def': 'An institution providing medical and surgical treatment.', 'ex': 'He is in the hospital.', 'synonyms': ['clinic', 'infirmary', 'medical center', 'ward'], 'phonetic': '/ˈhɒspɪtl/'},
    'fever': {'pl': 'gorączka', 'def': 'An abnormally high body temperature.', 'ex': 'The child has a high fever.', 'synonyms': ['temperature', 'heat', 'illness'], 'phonetic': '/ˈfiːvər/'},
    'cough': {'pl': 'kaszel', 'def': 'Expel air from the lungs with a sudden sharp sound.', 'ex': 'He has a bad cough.', 'synonyms': ['bark', 'hack', 'wheeze'], 'phonetic': '/kɒf/'},
    'nurse': {'pl': 'pielęgniarka', 'def': 'A person trained to care for the sick or infirm.', 'ex': 'The nurse checked my blood pressure.', 'synonyms': ['caregiver', 'medic', 'attendant'], 'phonetic': '/nɜːs/'},
    'clinic': {'pl': 'przychodnia / klinika', 'def': 'An establishment or hospital department where outpatients are given medical treatment.', 'ex': 'The clinic opens at 9 AM.', 'synonyms': ['medical center', 'surgery', 'infirmary'], 'phonetic': '/ˈklɪnɪk/'},
    'flu': {'pl': 'grypa', 'def': 'A contagious viral infection causing fever and aching.', 'ex': 'Everyone seems to have the flu.', 'synonyms': ['influenza', 'virus', 'bug', 'cold'], 'phonetic': '/fluː/'},
    'pain': {'pl': 'ból', 'def': 'Physical suffering or discomfort caused by illness or injury.', 'ex': 'I feel pain in my back.', 'synonyms': ['suffering', 'agony', 'ache', 'discomfort'], 'phonetic': '/peɪn/'},
    'headache': {'pl': 'ból głowy', 'def': 'A continuous pain in the head.', 'ex': 'I have a splitting headache.', 'synonyms': ['migraine', 'pain', 'head pain'], 'phonetic': '/ˈhɛdeɪk/'},
    'bandage': {'pl': 'bandaż', 'def': 'A strip of material used to bind up a wound.', 'ex': 'Put a bandage on that cut.', 'synonyms': ['dressing', 'compress', 'gauze', 'plaster'], 'phonetic': '/ˈbændɪdʒ/'},
    'exercise': {'pl': 'ćwiczenie', 'def': 'Activity requiring physical effort.', 'ex': 'Exercise is good for your health.', 'synonyms': ['workout', 'training', 'activity', 'fitness'], 'phonetic': '/ˈɛksəsaɪz/'},

    // TECHNOLOGIA
    'website': {'pl': 'strona internetowa', 'def': 'A set of related web pages located under a single domain name.', 'ex': 'Visit our website for more info.', 'synonyms': ['site', 'webpage', 'portal', 'domain'], 'phonetic': '/ˈwɛbsaɪt/'},
    'laptop': {'pl': 'laptop', 'def': 'A computer that is portable and suitable for use while traveling.', 'ex': 'I use my laptop for work.', 'synonyms': ['notebook', 'computer', 'PC', 'machine'], 'phonetic': '/ˈlæptɒp/'},
    'smartphone': {'pl': 'smartfon', 'def': 'A mobile phone that performs many of the functions of a computer.', 'ex': 'Everyone has a smartphone these days.', 'synonyms': ['mobile', 'cellphone', 'phone', 'device'], 'phonetic': '/ˈsmɑːtfəʊn/'},
    'mouse': {'pl': 'myszka (komputerowa)', 'def': 'A handheld device used to control the cursor on a computer screen.', 'ex': 'Click the button with your mouse.', 'synonyms': ['pointer', 'device', 'cursor controller'], 'phonetic': '/maʊs/'},
    'video': {'pl': 'wideo', 'def': 'The recording, reproducing, or broadcasting of moving visual images.', 'ex': 'We watched a funny video.', 'synonyms': ['movie', 'clip', 'film', 'recording'], 'phonetic': '/ˈvɪdɪəʊ/'},

  };
}
