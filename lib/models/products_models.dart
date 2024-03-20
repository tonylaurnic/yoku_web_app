import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final double price;
  final String description;
  final String allergy;

  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.allergy,
  });

  static List<Product> products = [
    const Product(
      name: '101. EDAMAME',
      category: 'Antipasti',
      price: 4.50,
      description: 'baccelli di soia',
      allergy: '',
    ),
  ];

//   static List<Product> products = [
//     const Product(
//       name: '101. EDAMAME',
//       category: 'Antipasti',
//       price: 4.50,
//       description: 'baccelli di soia',
//       allergy: '',
//     ),
//     const Product(
//       name: '102. EDAMAME SPICY',
//       category: 'Antipasti',
//       price: 5.00,
//       description: 'bacelli di soia piccanti',
//       allergy: '',
//     ),
//     const Product(
//       name: '103. ALGA WAKAME',
//       category: 'Antipasti',
//       price: 5.00,
//       description: '',
//       allergy: '',
//     ),
//     const Product(
//       name: '104. EBI GYOZA',
//       category: 'Antipasti',
//       price: 3.00,
//       description: 'ravioli di gamberi ',
//       allergy: '',
//     ),
//     const Product(
//       name: '105. NIKU GYOZA',
//       category: 'Antipasti',
//       price: 5,
//       description: 'ravioli di carne',
//       allergy: '',
//     ),
//     const Product(
//       name: '106. EBI FRY',
//       category: 'Antipasti',
//       price: 5,
//       description: 'gamberi avvolti in pasta kataifi (2 pezzi)',
//       allergy: '',
//     ),
//     const Product(
//       name: '107. SAKURA',
//       category: 'Antipasti',
//       price: 6,
//       description: ' fior di zucca in tempura croccante',
//       allergy: '',
//     ),
//     const Product(
//       name: '108. SAMURAI STICK (3 pezzi)',
//       category: 'Antipasti',
//       price: 6.5,
//       description: 'involtini di gamberi, baccelli di soia, salsa piccante',
//       allergy: '',
//     ),
//     const Product(
//       name: '109. MILLEFOGLIE DI TONNO',
//       category: 'Antipasti',
//       price: 12.00,
//       description:
//           'alternanza di sfoglia di riso, filetto di tonno, cream cheese, pomodoro confit con olio al tartufo',
//       allergy: '',
//     ),
//     const Product(
//       name: '110. YASAINO',
//       category: 'Antipasti',
//       price: 5,
//       description: ' involtini ripieni di verdure',
//       allergy: '',
//     ),
//     const Product(
//       name: '111. SCAMPI AL PASSION FRUIT',
//       category: 'Antipasti',
//       price: 8,
//       description: 'marinati con emulsione al passion fruit e tobiko',
//       allergy: '',
//     ),
//     const Product(
//       name: '112. INVOLTINO AMAEBI (2 pezzi)',
//       category: 'Antipasti',
//       price: 8,
//       description:
//           'gambero rosso avvolto da pesce bianco con wasabi fresco e salsa ponzu',
//       allergy: '',
//     ),
//     const Product(
//       name: '113. SALMON ROLL (4 pezzi)',
//       category: 'Antipasti',
//       price: 10,
//       description:
//           'gambero fritto avvolto da filetto di salmone scottato, cream cheese, crema di soia e salsa teriyaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '114. TUNA FLOWER ROLL(4 pezzi) ',
//       category: 'Antipasti',
//       price: 12.00,
//       description:
//           'fiore di zucca avvolto da filetto di tonno scottato, cream cheese e salsa teriyaki',
//       allergy: '',
//     ),

// ////////crudite
//     const Product(
//       name: '115. SCAMPI, GAMBERI ROSSI',
//       category: 'Crudite',
//       price: 0.0,
//       description: 'prezzo variabile',
//       allergy: '',
//     ),

//     //// Tartare
//     const Product(
//       name: '120. SALMON TARTARE',
//       category: 'Tartare',
//       price: 10,
//       description:
//           'tartare di salmone con avocado, ikura, pasta kataifi e il suo condimento',
//       allergy: '',
//     ),

//     const Product(
//       name: '121. TUNA TARTARE',
//       category: 'Tartare',
//       price: 12,
//       description:
//           'tartare di tonno con avocado, ikura, pasta kataifi e il suo condimento',
//       allergy: '',
//     ),
//     const Product(
//       name: '122. EXOTIC SCAMP',
//       category: 'Tartare',
//       price: 14,
//       description:
//           'tartare di scampi freschi con dressing al passion fruit, nero di seppia e olio evo',
//       allergy: '',
//     ),
//     const Product(
//       name: '123. EBI TARTAR',
//       category: 'Tartare',
//       price: 16,
//       description:
//           'tartare di gambero rosso fresco con salsa yuzu aromatizzato al wasabi',
//       allergy: '',
//     ),

//     const Product(
//       name: '124. LOBSTER TARTARE',
//       category: 'Tartare',
//       price: 14,
//       description:
//           'tartare di astice al vapore su un letto di riso con mayo, mandorle tostate, pasta kataifi e salsa teriyaki',
//       allergy: '',
//     ),

//     ////////carpaccio
//     const Product(
//       name: '125. SAKE USUZUKURU ',
//       category: 'Carpaccio',
//       price: 10,
//       description: 'carpaccio di salmone sottile con salsa dello chef',
//       allergy: '',
//     ),

//     const Product(
//       name: '126. MAGURO USUZUKURU',
//       category: 'Carpaccio',
//       price: 11,
//       description: 'carpaccio di tonno sottile con salsa dello chef',
//       allergy: '',
//     ),
//     const Product(
//       name: '127. YOKU',
//       category: 'Carpaccio',
//       price: 12,
//       description: 'mix usuzukuru carpaccio di pesce misto',
//       allergy: '',
//     ),
//     const Product(
//       name: '128. HOTA',
//       category: 'Carpaccio',
//       price: 15,
//       description:
//           'carpaccio di capasanta con salsa ponzu e olio evo, sale nero e scaglie di tartufo',
//       allergy: '',
//     ),
//     const Product(
//       name: '129. AMA',
//       category: 'Carpaccio',
//       price: 14,
//       description:
//           'carpaccio di gambero rosso in salsa ponzu, tobiko, olio evo e scaglie di tartufo nero (4 pezzi)',
//       allergy: '',
//     ),

//     ///////gunkan special

//     const Product(
//       name: '201. GUNKAN SALMON OUT',
//       category: 'Gunkan Special',
//       price: 6.5,
//       description: 'salmone esterno e tartare di salmone piccante',
//       allergy: '',
//     ),
//     const Product(
//       name: '202. GUNKAN TUNA OUT',
//       category: 'Gunkan Special',
//       price: 7,
//       description: 'tonno esterno con tartare di tonno piccante',
//       allergy: '',
//     ),
//     const Product(
//       name: '203. GUNKAN PINKY EBI ',
//       category: 'Gunkan Special',
//       price: 6.5,
//       description: 'zucchina cotta esterna con tartare di gambero cotto',
//       allergy: '',
//     ),
//     const Product(
//       name: '204. GUNKAN SCOTTATO',
//       category: 'Gunkan Special',
//       price: 7.5,
//       description: 'salmone esterno e tartare di gambero cotto, tobiko e mayo',
//       allergy: '',
//     ),
//     const Product(
//       name: '205. GUNKAN SALMON IKURA',
//       category: 'Gunkan Special',
//       price: 6.5,
//       description: 'salmone esterno con uova di salmone',
//       allergy: '',
//     ),
//     const Product(
//       name: '206. GUNKAN PHILADELPHIA',
//       category: 'Gunkan Special',
//       price: 6,
//       description: 'salmone esterno con philadelphia',
//       allergy: '',
//     ),
//     const Product(
//       name: '207. GUNKAN UZURA',
//       category: 'Gunkan Special',
//       price: 7.5,
//       description:
//           'salmone esterno con uova di quaglia, ikura, olio al tartufo e una goccia di ponzu',
//       allergy: '',
//     ),
//     const Product(
//       name: '208. GUNKAN SNOW CRAB',
//       category: 'Gunkan Special',
//       price: 7.5,
//       description:
//           'salmone esterno con polpa di granchio reale dell’artico e mayo',
//       allergy: '',
//     ),

//     //////
//     const Product(
//       name: '209. SAKE TATAKI',
//       category: 'Tataki',
//       price: 12,
//       description: 'salmone scottato in crosta di sesamo',
//       allergy: '',
//     ),
//     const Product(
//       name: '210. MAGURO TATAKI ',
//       category: 'Tataki',
//       price: 13,
//       description: 'tonno scottato in crosta di sesamo',
//       allergy: '',
//     ),
// /////

//     const Product(
//       name: '211. SAKE',
//       category: 'Nigiri',
//       price: 3.5,
//       description: 'salmone',
//       allergy: '',
//     ),
//     const Product(
//       name: '212. MAGURO',
//       category: 'Nigiri',
//       price: 4.5,
//       description: 'tonno',
//       allergy: '',
//     ),
//     const Product(
//       name: '213. SUZUKI',
//       category: 'Nigiri',
//       price: 4.5,
//       description: 'branzino',
//       allergy: '',
//     ),
//     const Product(
//       name: '216. EBI',
//       category: 'Nigiri',
//       price: 4,
//       description: 'gambero cotto',
//       allergy: '',
//     ),
//     const Product(
//       name: '217. ANAGO',
//       category: 'Nigiri',
//       price: 5,
//       description: 'anguilla alla griglia',
//       allergy: '',
//     ),
//     const Product(
//       name: '218. AMAEBI',
//       category: 'Nigiri',
//       price: 7,
//       description: 'gambero rosso',
//       allergy: '',
//     ),

// //////

//     const Product(
//       name: '220. SALMON ROUGE',
//       category: 'Nigiri special',
//       price: 5,
//       description: 'salmone e tartare di gambero rosso spicy',
//       allergy: '',
//     ),
//     const Product(
//       name: '221. NIGIRI SAKE SPECIAL ',
//       category: 'Nigiri special',
//       price: 5,
//       description: 'salmone scottato con salsa, mayo, spicy e teriyaki',
//       allergy: '',
//     ),

// /////

//     const Product(
//       name: '301. AVOCADO MAKI',
//       category: 'Hosomaki',
//       price: 5,
//       description: 'avocado',
//       allergy: '',
//     ),
//     const Product(
//       name: '302. SAKE MAKI',
//       category: 'Hosomaki',
//       price: 5,
//       description: 'salmone',
//       allergy: '',
//     ),
//     const Product(
//       name: '303. MAGURO MAKI',
//       category: 'Hosomaki',
//       price: 6,
//       description: 'tonno',
//       allergy: '',
//     ),
//     const Product(
//       name: '304. SURIMI MAKI',
//       category: 'Hosomaki',
//       price: 5,
//       description: 'surimi',
//       allergy: '',
//     ),
//     const Product(
//       name: '305. EBI MAKI',
//       category: 'Hosomaki',
//       price: 5,
//       description: 'gambero al vapore',
//       allergy: '',
//     ),
//     const Product(
//       name: '307. MIX HOSOMAKI',
//       category: 'Hosomaki',
//       price: 5,
//       description: 'pesce misto',
//       allergy: '',
//     ),
//     const Product(
//       name: '308. KAPAMAKI',
//       category: 'Hosomaki',
//       price: 4,
//       description: 'cetriolo',
//       allergy: '',
//     ),

// ////temaki
//     const Product(
//       name: '310. SALMON TEMAKI ',
//       category: 'Temaki',
//       price: 4.5,
//       description: 'salmone e avocado',
//       allergy: '',
//     ),
//     const Product(
//       name: '311. TUNA TEMAKI',
//       category: 'Temaki',
//       price: 5,
//       description: 'tonno e avocado',
//       allergy: '',
//     ),

//     const Product(
//       name: '312. EBITEN TEMAKI',
//       category: 'Temaki',
//       price: 4.5,
//       description: 'gamberone in tempura, salsa teriyaki e chips di patate',
//       allergy: '',
//     ),

//     const Product(
//       name: '313. TEMAKI SPICY SALMON',
//       category: 'Temaki',
//       price: 5,
//       description: 'tartare di salmone piccante e mayo',
//       allergy: '',
//     ),

//     const Product(
//       name: '314. TEMAKI SPICY TUNA',
//       category: 'Temaki',
//       price: 5.5,
//       description: 'tartare di tonno piccante e mayo',
//       allergy: '',
//     ),

//     const Product(
//       name: '315. AMAEBI TEMAKI',
//       category: 'Temaki',
//       price: 6,
//       description: 'gambero rosso crudo',
//       allergy: '',
//     ),

//     ////temaki yoku
//     const Product(
//       name: '316. TEMAKI SALMON PLUS',
//       category: 'Temaki Yoku',
//       price: 5,
//       description:
//           'tartare di salmone piccante con scaglie di mandorle e indivia',
//       allergy: '',
//     ),
//     const Product(
//       name: '317. TEMAKI FLOR',
//       category: 'Temaki Yoku',
//       price: 6,
//       description: 'fior di zucca in tempura, tartare di gambero piccante',
//       allergy: '',
//     ),
//     const Product(
//       name: '318. TEMAKI CAMARON',
//       category: 'Temaki Yoku',
//       price: 6.5,
//       description: 'gamberone in tempura, tartare di salmone piccante',
//       allergy: '',
//     ),
//     const Product(
//       name: '319. UNAGHI TEMAKI',
//       category: 'Temaki Yoku',
//       price: 6.5,
//       description: 'filetto di anguilla alla piastra e avocado',
//       allergy: '',
//     ),

//     ///uramaki
//     const Product(
//       name: '401. CALIFORNIA',
//       category: 'Uramaki',
//       price: 8,
//       description: 'polpa di granchio, avocado, cetriolo e mayo',
//       allergy: '',
//     ),
//     const Product(
//       name: '402. CALIFORNIA ROYAL',
//       category: 'Uramaki',
//       price: 13,
//       description: 'atlants royal crab, avocado, mayo e tobiko fritto',
//       allergy: '',
//     ),
//     const Product(
//       name: '403. SAUDADE',
//       category: 'Uramaki',
//       price: 13,
//       description:
//           'tartare di salmone su un letto di riso, avocado e caviale di salmone',
//       allergy: '',
//     ),
//     const Product(
//       name: '404. DRAGON ROLL',
//       category: 'Uramaki',
//       price: 14,
//       description:
//           'gambero in tempura, tartare di tonno, avocado e pasta kataifi',
//       allergy: '',
//     ),
//     const Product(
//       name: '405. EBI FLÒ',
//       category: 'Uramaki',
//       price: 14,
//       description:
//           'gamberone fritto all’interno, salmone speziato sopra, ikura e croccante di fiori di zucca',
//       allergy: '',
//     ),
//     const Product(
//       name: '406. RAINBOW',
//       category: 'Uramaki',
//       price: 13,
//       description:
//           'selezione di pesce misto, avocado all’esterno, gambero fritto e cream cheese',
//       allergy: '',
//     ),
//     const Product(
//       name: '407. RAINBOW SPECIAL',
//       category: 'Uramaki',
//       price: 14,
//       description: 'selezione di pesce misto, avocado all’interno ed esterno',
//       allergy: '',
//     ),
//     const Product(
//       name: '408. MANGO THAI ROLL',
//       category: 'Uramaki',
//       price: 12,
//       description: 'salmone, philadelphia e mango thailandese',
//       allergy: '',
//     ),

//     const Product(
//       name: '409. LOBSTER ROLL',
//       category: 'Uramaki',
//       price: 18,
//       description: 'astice al vapore e tobiko',
//       allergy: '',
//     ),
//     const Product(
//       name: '410. AMA EBI ROLL',
//       category: 'Uramaki',
//       price: 14,
//       description: 'gambero rosso fresco, avocado e tobiko',
//       allergy: '',
//     ),
//     const Product(
//       name: '411. TUNA AVOCADO',
//       category: 'Uramaki',
//       price: 10,
//       description: 'tonno, avocado e tobiko',
//       allergy: '',
//     ),
//     const Product(
//       name: '412. NIDO ROLL',
//       category: 'Uramaki',
//       price: 14,
//       description: 'cream cheese, avocado, tonno, salmone e pasta kataifi',
//       allergy: '',
//     ),
//     const Product(
//       name: '413. SPICY SALMON',
//       category: 'Uramaki',
//       price: 11,
//       description:
//           'salmone e crunch all’interno, tartare di salmone spicy e lana di peperoncino sopra',
//       allergy: '',
//     ),
//     const Product(
//       name: '414. SPICY TUNA',
//       category: 'Uramaki',
//       price: 12,
//       description:
//           'tonno e crunch all’interno, tartare di tonno spicy e lana di peperoncino sopra',
//       allergy: '',
//     ),
//     const Product(
//       name: '415. MEI ROLL',
//       category: 'Uramaki',
//       price: 14,
//       description:
//           'fior di zucca in tempura, tonno, salsa teriyaki, semi di sesamo aromatizzati',
//       allergy: '',
//     ),
//     const Product(
//       name: '416. PHILADELPHIA',
//       category: 'Uramaki',
//       price: 10,
//       description: 'salmone, avocado, cream cheese',
//       allergy: '',
//     ),
//     const Product(
//       name: '417. TIGER ROLL',
//       category: 'Uramaki',
//       price: 13,
//       description:
//           'tempura di gamberone, fettine di pesce all’esterno e caviale di salmone',
//       allergy: '',
//     ),
//     const Product(
//       name: '418. ANGUILLA ROLL',
//       category: 'Uramaki',
//       price: 14,
//       description:
//           'anguilla arrosto in salsa dolce, lamine di avocado e salsa teriyaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '419. MIURA MAKI ',
//       category: 'Uramaki',
//       price: 9,
//       description: 'salmone grigliato, philadelphia e salsa teriyaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '420. AMONDO PHILADELPHIA',
//       category: 'Uramaki',
//       price: 10,
//       description: 'tartare di salmone, cream cheese e mandorle tostate',
//       allergy: '',
//     ),
//     const Product(
//       name: '421. FRAGOLA MAKI (6 pezzi)',
//       category: 'Uramaki',
//       price: 10,
//       description:
//           'hosomaki ripieno di salmone, fritto all’esterno, cream cheese, fragole e salsa teriyaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '422. SALMON EBI TEN',
//       category: 'Uramaki',
//       price: 14,
//       description:
//           'gambero in tempura, tartare di salmone scottato, avocado, salsa mayo, salsa teriyaki, tobiko',
//       allergy: '',
//     ),
//     const Product(
//       name: '423. TEMPURA MAKI',
//       category: 'Uramaki',
//       price: 12,
//       description:
//           'salmone, cream cheese, lamine di tempura e avocado all’esterno',
//       allergy: '',
//     ),
//     const Product(
//       name: '424. TRUFFLE ROLL',
//       category: 'Uramaki',
//       price: 16,
//       description:
//           'tartare di pesce bianco, gambero fritto e scaglie di tartufo',
//       allergy: '',
//     ),
//     const Product(
//       name: '425. SCAMPO ROLL',
//       category: 'Uramaki',
//       price: 16,
//       description:
//           'scampi, mango fresco, philadelphia, arachidi croccanti chiuso dall’alga di tofu',
//       allergy: '',
//     ),
//     const Product(
//       name: '426. EBI UNAGHI',
//       category: 'Uramaki',
//       price: 16,
//       description:
//           'gambero a vapore, avocado, copertura di anguilla caramellata e lamine di tempura',
//       allergy: '',
//     ),
//     const Product(
//       name: '427. EBITEN URAMAKI ',
//       category: 'Uramaki',
//       price: 10,
//       description: 'gamberone in tempura, pasta kataifi, mayo e salsa teriyaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '429. IMPERIAL EBITEN',
//       category: 'Uramaki',
//       price: 12,
//       description:
//           'gamberone fritto all’interno, avocado esterno, mayo al nero di seppia e teriyaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '430. HANA ROLL',
//       category: 'Uramaki',
//       price: 16,
//       description:
//           'tartare di salmone cotto all’interno, avocado esterno, tartare di astice condito sopra, kataifi e teriyaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '502. AMAEBI TRUFFLE ROLL',
//       category: 'Uramaki',
//       price: 18,
//       description:
//           'salmone e cream cheese all’interno con sopra gambero rosso crudo e tartufo nero',
//       allergy: '',
//     ),
//     const Product(
//       name: '503. SNOW',
//       category: 'Uramaki',
//       price: 16,
//       description:
//           'gambero fritto, avocado esterno, tartare di astice condito sopra e mayo',
//       allergy: '',
//     ),

// ////futomaki

//     const Product(
//       name: '504. CALIFORNIA FUTOMAKI',
//       category: 'Futomaki',
//       price: 5,
//       description: 'polpa di granchio, avocado, cetriolo e salsa mayo',
//       allergy: '',
//     ),

//     const Product(
//       name: '505. FUTOMAKI EBITEN',
//       category: 'Futomaki',
//       price: 6.5,
//       description:
//           'gambero in tempura, insalata, tobiko, salsa teriyaki e chips di patate',
//       allergy: '',
//     ),

//     const Product(
//       name: '506. HOT ROLL FRITTO',
//       category: 'Futomaki',
//       price: 7,
//       description: 'salmone, gambero cotto, avocado, e salsa mayo',
//       allergy: '',
//     ),
//     ///////compositione sushi

//     const Product(
//       name: '508. NIGIRI SPECIA',
//       category: 'Composizioni Sushi',
//       price: 14,
//       description: '6 nigiri special misti',
//       allergy: '',
//     ),
//     const Product(
//       name: '509. SUSA HU ',
//       category: 'Composizioni Sushi',
//       price: 14,
//       description: '6 sashimi, 6 nigiri',
//       allergy: '',
//     ),
//     const Product(
//       name: '511. GUNKAN TASTE',
//       category: 'Composizioni Sushi',
//       price: 16,
//       description: '5 gunkan misti',
//       allergy: '',
//     ),
//     //////////sashimi

//     const Product(
//       name: '512. SALMON SASHIM',
//       category: 'Composizioni sashimi',
//       price: 7,
//       description: '6 pezzi',
//       allergy: '',
//     ),
//     const Product(
//       name: '513. TUNA SASHIMI',
//       category: 'Composizioni sashimi',
//       price: 8,
//       description: '6 pezzi',
//       allergy: '',
//     ),
//     const Product(
//       name: '514. SASHIMI MIX',
//       category: 'Composizioni sashimi',
//       price: 14,
//       description: '12 pezzi',
//       allergy: '',
//     ),
// //// compositioni yoku

//     const Product(
//       name: '515. SMALL',
//       category: 'Composizioni Yoku',
//       price: 20,
//       description:
//           '1 persona, 17 pezzi, 3 sashimi, 4 uramaki, 3 hosomaki, 6 nigiri, 1 gunkan',
//       allergy: '',
//     ),
//     const Product(
//       name: '516. LOVE',
//       category: 'Composizioni Yoku',
//       price: 38,
//       description:
//           '2 persone, 35 pezzi9 sashimi, 8 uramaki, 6 hosomaki, 8 nigiri, 4 futomaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '517. PARTY',
//       category: 'Composizioni Yoku',
//       price: 60,
//       description:
//           '3 persone, 65 pezzi 12 sashimi, 16 uramaki, 12 hosomaki, 14 nigiri, 4 futomaki, 3 gunkan',
//       allergy: '',
//     ),
//     //////

//     const Product(
//       name: '601. VEGETAL NIGIRI (6 pezzi)',
//       category: 'Sushi Vegetariano',
//       price: 12,
//       description: 'composizione di nigiri misti',
//       allergy: '',
//     ),
//     const Product(
//       name: '602. GUNKAN WAKAME (2 pezzi) 1',
//       category: 'Sushi Vegetariano',
//       price: 5,
//       description: 'alga esterna, insalata di alga wakame',
//       allergy: '',
//     ),
//     const Product(
//       name: '603. JUST VEGETAL URAMAKI (8 pezzi)',
//       category: 'Sushi Vegetariano',
//       price: 8,
//       description: 'avocado, cetriolo, alga wakame, insalata e semi di sesamo',
//       allergy: '',
//     ),
//     const Product(
//       name: '604. VEG ROLL URAMAKI (8 pezzi)',
//       category: 'Sushi Vegetariano',
//       price: 8,
//       description: 'avocado, asparago, cream cheese e chips di patate',
//       allergy: '',
//     ),
//     const Product(
//       name: '605. SUSHI TREE',
//       category: 'Sushi Vegetariano',
//       price: 20,
//       description: '6 nigiri, 8 uramaki, 3 hosomaki, 1 gunkan',
//       allergy: '',
//     ),
//     const Product(
//       name: '606. FUTO TOFU (6 pezzi) ',
//       category: 'Sushi Vegetariano',
//       price: 9,
//       description:
//           'futomaki con tofu avvolto da fiore di zucca fritto, alga wakame, semi di sesamo e salsa agrodolce',
//       allergy: '',
//     ),
//     const Product(
//       name: '607. NIGIRI AVOCADO',
//       category: 'Sushi Vegetariano',
//       price: 5,
//       description: '2 nigiri con lamine di avocado',
//       allergy: '',
//     ),

//     ///chirashi
//     const Product(
//       name: '608. CIRASHI MIX',
//       category: 'Cirashi',
//       price: 12,
//       description: 'pesce misto',
//       allergy: '',
//     ),
//     const Product(
//       name: '609. SAKE DON',
//       category: 'Cirashi',
//       price: 10,
//       description: 'salmone',
//       allergy: '',
//     ),
//     const Product(
//       name: '610. MAGURO DON',
//       category: 'Cirashi',
//       price: 11,
//       description: 'tonno',
//       allergy: '',
//     ),
//     const Product(
//       name: '611. UNAGHI DON',
//       category: 'Cirashi',
//       price: 12,
//       description: 'riso bianco con anguilla arrosto',
//       allergy: '',
//     ),
// ////zuppe
//     const Product(
//       name: '612. MISO SHIRU',
//       category: 'Zuppe',
//       price: 3.5,
//       description: 'zuppa di soia con alghe, tofu e erba cipollina',
//       allergy: '',
//     ),
//     const Product(
//       name: '613. YASAI SOUP SPICY ',
//       category: 'Zuppe',
//       price: 5,
//       description:
//           'zuppa piccante di verdure miste, tofu, uovo, funghi e bambù',
//       allergy: '',
//     ),
//     const Product(
//       name: '614. COCCO THAI SŪPE',
//       category: 'Zuppe',
//       price: 6,
//       description: 'zuppa di cocco thai con gamberi',
//       allergy: '',
//     ),

//     ///
//     const Product(
//       name: '615. GOHAN',
//       category: 'Riso',
//       price: 3.5,
//       description: 'riso bianco',
//       allergy: '',
//     ),
//     const Product(
//       name: '616. YAKI MESHI',
//       category: 'Riso',
//       price: 7,
//       description: 'riso saltato con verdure di stagione e uovo',
//       allergy: '',
//     ),
//     const Product(
//       name: '617. SAKE MESHI',
//       category: 'Riso',
//       price: 8,
//       description: 'riso saltato con salmone, verdure e uovo',
//       allergy: '',
//     ),

//     const Product(
//       name: '618. STREET RICE',
//       category: 'Riso',
//       price: 8,
//       description: 'riso al curry con carne di vitello e uovo',
//       allergy: '',
//     ),
//     const Product(
//       name: '619. SEAFOOD RICE',
//       category: 'Riso',
//       price: 14,
//       description: 'riso su pietra lavica con misto mare, verdure e uovo',
//       allergy: '',
//     ),
//     const Product(
//       name: '620. BEEF RICE',
//       category: 'Riso',
//       price: 12,
//       description: 'riso su pietra lavica con manzo, peperoni e uovo',
//       allergy: '',
//     ),

// // ///// pasts in brodo

//     const Product(
//       name: '702. SOBA',
//       category: 'Pasta in brodo',
//       price: 8,
//       description: 'spaghetti di grano saraceno in brodo di misto mare',
//       allergy: '',
//     ),
//     const Product(
//       name: '703. RAMEN',
//       category: 'Pasta in brodo',
//       price: 8,
//       description: 'spaghetti di riso in brodo con uova, alghe e misto mare',
//       allergy: '',
//     ),
//     const Product(
//       name: '704. GYONIKU UDON',
//       category: 'Pasta in brodo',
//       price: 8,
//       description: 'spaghetti di riso con manzo',
//       allergy: '',
//     ),
// ///////pasta saltata
//     const Product(
//       name: '705. YAKI UDON',
//       category: 'Pasta saltata',
//       price: 8,
//       description: 'spaghetti di riso con gamberi e verdure',
//       allergy: '',
//     ),
//     const Product(
//       name: '706. YAKI SOBA',
//       category: 'Pasta saltata',
//       price: 8,
//       description: 'spaghetti di grano saraceno con gamberi e verdure',
//       allergy: '',
//     ),
//     const Product(
//       name: '707. YAKI SOBA GREEN ',
//       category: 'Pasta saltata',
//       price: 8,
//       description: 'spaghetti al the verde con gamberi e verdure',
//       allergy: '',
//     ),
//     const Product(
//       name: '708. NIKU UDON',
//       category: 'Pasta saltata',
//       price: 8,
//       description: 'spaghetti di riso con manzo e verdure',
//       allergy: '',
//     ),
//     const Product(
//       name: '709. NIKU SOBA',
//       category: 'Pasta saltata',
//       price: 8,
//       description: 'spaghetti di grano saraceno con manzo e verdure',
//       allergy: '',
//     ),
//     const Product(
//       name: '710. SAKE GREEN',
//       category: 'Pasta saltata',
//       price: 8,
//       description: 'spaghetti al the verde con salmone e lana d’alga',
//       allergy: '',
//     ),
//     const Product(
//       name: '711. UDON UMI',
//       category: 'Pasta saltata',
//       price: 9,
//       description: 'spaghetti di riso con misto mare',
//       allergy: '',
//     ),
//     const Product(
//       name: '712. SPAGHETTI DI SOIA',
//       category: 'Pasta saltata',
//       price: 8,
//       description: 'spaghetti di soia con gamberi e verdure',
//       allergy: '',
//     ),
//     const Product(
//       name: '713. PAD THAI',
//       category: 'Pasta saltata',
//       price: 9.5,
//       description: 'tagliatelle di riso con misto mare e arachidi',
//       allergy: '',
//     ),

//     /////tempura
//     const Product(
//       name: '714. YASAI TEMPURA',
//       category: 'Tempura',
//       price: 8,
//       description: 'tempura di verdure di stagione',
//       allergy: '',
//     ),
//     const Product(
//       name: '715. EBI TEMPURA',
//       category: 'Tempura',
//       price: 12,
//       description: 'tempura di gamberoni',
//       allergy: '',
//     ),
//     const Product(
//       name: '716. MIX TEMPURA',
//       category: 'Tempura',
//       price: 12,
//       description: 'tempura di gamberoni e verdure',
//       allergy: '',
//     ),

// // ////piastra
//     const Product(
//       name: '801. YAKI TORI ',
//       category: 'Piastra',
//       price: 8,
//       description:
//           'spiedini di pollo alla pistra con asparagi in salsa teryaki',
//       allergy: '',
//     ),
//     const Product(
//       name: '802. SAKE TEPPAN',
//       category: 'Piastra',
//       price: 10,
//       description: 'filetto di salmone alla piastra',
//       allergy: '',
//     ),
//     const Product(
//       name: '803. MAGURO TEPPAN',
//       category: 'Piastra',
//       price: 11,
//       description: 'filetto di tonno alla piastra',
//       allergy: '',
//     ),
//     const Product(
//       name: '804. EBI SHINO YAKI',
//       category: 'Piastra',
//       price: 8,
//       description: 'spiedini di gamberi',
//       allergy: '',
//     ),

// //////verdure
//     const Product(
//       name: '805. YASAI',
//       category: 'Verdure',
//       price: 6.5,
//       description: 'cavolo orientale al salto',
//       allergy: '',
//     ),
//     const Product(
//       name: '806. YASAINO TEPPAN YAKI',
//       category: 'Verdure',
//       price: 6.5,
//       description: 'misto di verdure di stagione saltate',
//       allergy: '',
//     ),
//     //////
//     const Product(
//       name: 'BIBITE',
//       category: 'Bevande',
//       price: 3.5,
//       description: '',
//       allergy: '',
//     ),
//     const Product(
//       name: 'ACQUA',
//       category: 'Bevande',
//       price: 3.5,
//       description: '',
//       allergy: '',
//     ),
//     const Product(
//       name: 'LOTTE SAKE',
//       category: 'Bevande',
//       price: 5,
//       description: '',
//       allergy: '',
//     ),
//     const Product(
//       name: 'THE VERDE CALDO ORIENTALE',
//       category: 'Bevande',
//       price: 3.5,
//       description: '',
//       allergy: '',
//     ),
// ////bevande
//     const Product(
//       name: 'ASHAI 0,50 L',
//       category: 'Birre',
//       price: 6,
//       description: 'fresca dall’aroma lievemente fruttato',
//       allergy: '',
//     ),
//     const Product(
//       name: 'SAPORO SILVER 0,50 L',
//       category: 'Birre',
//       price: 6,
//       description: 'gusto deciso e leggermente amaro',
//       allergy: '',
//     ),
//     const Product(
//       name: 'SAPORO SILVER IMPORT 0,65 L',
//       category: 'Birre',
//       price: 7.5,
//       description: 'gusto deciso e leggermente amaro',
//       allergy: '',
//     ),
//     const Product(
//       name: 'SPINA 0,20 L',
//       category: 'Birre',
//       price: 3,
//       description: '',
//       allergy: '',
//     ),
//     const Product(
//       name: 'SPINA 0,40 L',
//       category: 'Birre',
//       price: 5,
//       description: '',
//       allergy: '',
//     ),
//   ];

  @override
  List<Object> get props {
    return [
      name,
      category,
      price,
      description,
      allergy,
    ];
  }
}
