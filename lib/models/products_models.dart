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
      name: 'EDAMAME',
      category: 'Antipasti',
      price: 4.50,
      description: 'baccelli di soia',
      allergy: '',
    ),
    const Product(
      name: 'EDAMAME SPICY',
      category: 'Antipasti',
      price: 5.00,
      description: 'bacelli di soia piccanti',
      allergy: '',
    ),
    const Product(
      name: 'ALGA WAKAME',
      category: 'Antipasti',
      price: 5.00,
      description: '',
      allergy: '',
    ),
    const Product(
      name: 'EBI GYOZA',
      category: 'Antipasti',
      price: 3.00,
      description: 'ravioli di gamberi ',
      allergy: '',
    ),
    const Product(
      name: 'NIKU GYOZ',
      category: 'Antipasti',
      price: 5,
      description: 'ravioli di carne',
      allergy: '',
    ),
    const Product(
      name: 'EBI FRY',
      category: 'Antipasti',
      price: 5,
      description: 'gamberi avvolti in pasta kataifi (2 pezzi)',
      allergy: '',
    ),
    const Product(
      name: 'SAKURA',
      category: 'Antipasti',
      price: 6,
      description: ' fior di zucca in tempura croccante',
      allergy: '',
    ),
    const Product(
      name: 'SAMURAI STICK (3 pezzi)',
      category: 'Antipasti',
      price: 6.5,
      description: 'involtini di gamberi, baccelli di soia, salsa piccante',
      allergy: '',
    ),
    const Product(
      name: 'MILLEFOGLIE DI TONNO',
      category: 'Antipasti',
      price: 12.00,
      description:
          'alternanza di sfoglia di riso, filetto di tonno, cream cheese, pomodoro confit con olio al tartufo',
      allergy: '',
    ),
    const Product(
      name: 'YASAINO',
      category: 'Antipasti',
      price: 5,
      description: ' involtini ripieni di verdure',
      allergy: '',
    ),
    const Product(
      name: 'SCAMPI AL PASSION FRUIT',
      category: 'Antipasti',
      price: 8,
      description: 'marinati con emulsione al passion fruit e tobiko',
      allergy: '',
    ),
    const Product(
      name: 'INVOLTINO AMAEBI (2 pezzi)',
      category: 'Antipasti',
      price: 8,
      description:
          'gambero rosso avvolto da pesce bianco con wasabi fresco e salsa ponzu',
      allergy: '',
    ),
    const Product(
      name: 'SALMON ROLL (4 pezzi)',
      category: 'Antipasti',
      price: 10,
      description:
          'gambero fritto avvolto da filetto di salmone scottato, cream cheese, crema di soia e salsa teriyaki',
      allergy: '',
    ),
    const Product(
      name: 'TUNA FLOWER ROLL(4 pezzi) ',
      category: 'Antipasti',
      price: 12.00,
      description:
          'fiore di zucca avvolto da filetto di tonno scottato, cream cheese e salsa teriyaki',
      allergy: '',
    ),

////////crudite
    const Product(
      name: 'SCAMPI, GAMBERI ROSSI',
      category: 'Crudite',
      price: 0.0,
      description: 'prezzo variabile',
      allergy: '',
    ),
    ////
    const Product(
      name: 'SALMON TARTARE',
      category: 'Tartare',
      price: 10,
      description:
          'tartare di salmone con avocado, ikura, pasta kataifi e il suo condimento',
      allergy: '',
    ),

    const Product(
      name: 'TUNA TARTARE',
      category: 'Tartare',
      price: 12,
      description:
          'tartare di tonno con avocado, ikura, pasta kataifi e il suo condimento',
      allergy: '',
    ),

    const Product(
      name: 'EBI TARTAR',
      category: 'Tartare',
      price: 16,
      description:
          'tartare di gambero rosso fresco con salsa yuzu aromatizzato al wasabi',
      allergy: '',
    ),
    const Product(
      name: 'LOBSTER TARTARE',
      category: 'Tartare',
      price: 14,
      description:
          'tartare di astice al vapore su un letto di riso con mayo, mandorle tostate, pasta kataifi e salsa teriyaki',
      allergy: '',
    ),
    ////////carpaccio
    const Product(
      name: 'SAKE USUZUKURU ',
      category: 'Carpaccio',
      price: 10,
      description: 'carpaccio di salmone sottile con salsa dello chef',
      allergy: '',
    ),
    const Product(
      name: 'MAGURO USUZUKURU',
      category: 'Carpaccio',
      price: 11,
      description: 'carpaccio di tonno sottile con salsa dello chef',
      allergy: '',
    ),
    const Product(
      name: 'YOKU',
      category: 'Carpaccio',
      price: 12,
      description: 'mix usuzukuru carpaccio di pesce misto',
      allergy: '',
    ),
    const Product(
      name: 'HOTA',
      category: 'Carpaccio',
      price: 15,
      description:
          'carpaccio di capasanta con salsa ponzu e olio evo, sale nero e scaglie di tartufo',
      allergy: '',
    ),
    const Product(
      name: 'AMA',
      category: 'Carpaccio',
      price: 14,
      description:
          'carpaccio di gambero rosso in salsa ponzu, tobiko, olio evo e scaglie di tartufo nero (4 pezzi)',
      allergy: '',
    ),

    ///////

    const Product(
      name: 'GUNKAN SALMON OUT',
      category: 'Gunkan Special',
      price: 6.5,
      description: 'salmone esterno e tartare di salmone piccante',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN TUNA OUT',
      category: 'Gunkan Special',
      price: 7,
      description: 'tonno esterno con tartare di tonno piccante',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN PINKY EBI ',
      category: 'Gunkan Special',
      price: 6.5,
      description: 'zucchina cotta esterna con tartare di gambero cotto',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN SCOTTATO',
      category: 'Gunkan Special',
      price: 7.5,
      description: 'salmone esterno e tartare di gambero cotto, tobiko e mayo',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN SALMON IKURA',
      category: 'Gunkan Special',
      price: 6.5,
      description: 'salmone esterno con uova di salmone',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN PHILADELPHIA',
      category: 'Gunkan Special',
      price: 6,
      description: 'salmone esterno con philadelphia',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN UZURA',
      category: 'Gunkan Special',
      price: 7.5,
      description:
          'salmone esterno con uova di quaglia, ikura, olio al tartufo e una goccia di ponzu',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN SNOW CRAB',
      category: 'Gunkan Special',
      price: 7.5,
      description:
          'salmone esterno con polpa di granchio reale dell’artico e mayo',
      allergy: '',
    ),

    //////
    const Product(
      name: 'SAKE TATAKI',
      category: 'Tataki',
      price: 12,
      description: 'salmone scottato in crosta di sesamo',
      allergy: '',
    ),
    const Product(
      name: 'MAGURO TATAKI ',
      category: 'Tataki',
      price: 13,
      description: 'tonno scottato in crosta di sesamo',
      allergy: '',
    ),
/////

    const Product(
      name: 'SAKE',
      category: 'Nigiri',
      price: 3.5,
      description: 'salmone',
      allergy: '',
    ),
    const Product(
      name: 'MAGURO',
      category: 'Nigiri',
      price: 4.5,
      description: 'tonno',
      allergy: '',
    ),
    const Product(
      name: 'SUZUKI',
      category: 'Nigiri',
      price: 4.5,
      description: 'branzino',
      allergy: '',
    ),
    const Product(
      name: 'EBI',
      category: 'Nigiri',
      price: 4,
      description: 'gambero cotto',
      allergy: '',
    ),
    const Product(
      name: 'ANAGO',
      category: 'Nigiri',
      price: 5,
      description: 'anguilla alla griglia',
      allergy: '',
    ),
    const Product(
      name: 'AMAEBI',
      category: 'Nigiri',
      price: 7,
      description: 'gambero rosso',
      allergy: '',
    ),

//////

    const Product(
      name: 'SALMON ROUGE',
      category: 'Nigiri special',
      price: 5,
      description: 'salmone e tartare di gambero rosso spicy',
      allergy: '',
    ),
    const Product(
      name: 'NIGIRI SAKE SPECIAL ',
      category: 'Nigiri special',
      price: 5,
      description: 'salmone scottato con salsa, mayo, spicy e teriyaki',
      allergy: '',
    ),

/////

    const Product(
      name: 'AVOCADO MAKI',
      category: 'Hosomaki',
      price: 5,
      description: 'avocado',
      allergy: '',
    ),
    const Product(
      name: 'SAKE MAKI',
      category: 'Hosomaki',
      price: 5,
      description: 'salmone',
      allergy: '',
    ),
    const Product(
      name: 'MAGURO MAKI',
      category: 'Hosomaki',
      price: 6,
      description: 'tonno',
      allergy: '',
    ),
    const Product(
      name: 'SURIMI MAKI',
      category: 'Hosomaki',
      price: 5,
      description: 'surimi',
      allergy: '',
    ),
    const Product(
      name: 'EBI MAKI',
      category: 'Hosomaki',
      price: 5,
      description: 'gambero al vapore',
      allergy: '',
    ),
    const Product(
      name: ' MIX HOSOMAKI',
      category: 'Hosomaki',
      price: 5,
      description: 'pesce misto',
      allergy: '',
    ),
    const Product(
      name: 'KAPAMAKI',
      category: 'Hosomaki',
      price: 4,
      description: 'cetriolo',
      allergy: '',
    ),

////temaki
    const Product(
      name: 'SALMON TEMAKI ',
      category: 'Temaki',
      price: 4.5,
      description: 'salmone e avocado',
      allergy: '',
    ),
    const Product(
      name: 'TUNA TEMAKI',
      category: 'Temaki',
      price: 5,
      description: 'tonno e avocado',
      allergy: '',
    ),

    const Product(
      name: 'EBITEN TEMAKI',
      category: 'Temaki',
      price: 4.5,
      description: 'gamberone in tempura, salsa teriyaki e chips di patate',
      allergy: '',
    ),

    const Product(
      name: 'TEMAKI SPICY SALMON',
      category: 'Temaki',
      price: 5,
      description: 'tartare di salmone piccante e mayo',
      allergy: '',
    ),

    const Product(
      name: 'TEMAKI SPICY TUNA',
      category: 'Temaki',
      price: 5.5,
      description: 'tartare di tonno piccante e mayo',
      allergy: '',
    ),

    const Product(
      name: 'AMAEBI TEMAKI',
      category: 'Temaki',
      price: 6,
      description: 'gambero rosso crudo',
      allergy: '',
    ),

    ////temaki yoku
    const Product(
      name: 'TEMAKI SALMON PLUS',
      category: 'Temaki Yoku',
      price: 5,
      description:
          'tartare di salmone piccante con scaglie di mandorle e indivia',
      allergy: '',
    ),
    const Product(
      name: 'TEMAKI FLOR',
      category: 'Temaki Yoku',
      price: 6,
      description: 'fior di zucca in tempura, tartare di gambero piccante',
      allergy: '',
    ),
    const Product(
      name: 'TEMAKI CAMARON',
      category: 'Temaki Yoku',
      price: 6.5,
      description: 'gamberone in tempura, tartare di salmone piccante',
      allergy: '',
    ),
    const Product(
      name: 'UNAGHI TEMAKI',
      category: 'Temaki Yoku',
      price: 6.5,
      description: 'filetto di anguilla alla piastra e avocado',
      allergy: '',
    ),

    ///uramaki
    const Product(
      name: 'CALIFORNIA',
      category: 'Uramaki',
      price: 8,
      description: 'polpa di granchio, avocado, cetriolo e mayo',
      allergy: '',
    ),
    const Product(
      name: 'CALIFORNIA ROYAL',
      category: 'Uramaki',
      price: 13,
      description: 'atlants royal crab, avocado, mayo e tobiko fritto',
      allergy: '',
    ),
    const Product(
      name: 'SAUDADE',
      category: 'Uramaki',
      price: 13,
      description:
          'tartare di salmone su un letto di riso, avocado e caviale di salmone',
      allergy: '',
    ),
    const Product(
      name: 'DRAGON ROLL',
      category: 'Uramaki',
      price: 14,
      description:
          'gambero in tempura, tartare di tonno, avocado e pasta kataifi',
      allergy: '',
    ),
    const Product(
      name: 'EBI FLÒ',
      category: 'Uramaki',
      price: 14,
      description:
          'gamberone fritto all’interno, salmone speziato sopra, ikura e croccante di fiori di zucca',
      allergy: '',
    ),
    const Product(
      name: 'RAINBOW',
      category: 'Uramaki',
      price: 13,
      description:
          'selezione di pesce misto, avocado all’esterno, gambero fritto e cream cheese',
      allergy: '',
    ),
    const Product(
      name: 'RAINBOW SPECIAL',
      category: 'Uramaki',
      price: 14,
      description: 'selezione di pesce misto, avocado all’interno ed esterno',
      allergy: '',
    ),
    const Product(
      name: 'MANGO THAI ROLL',
      category: 'Uramaki',
      price: 12,
      description: 'salmone, philadelphia e mango thailandese',
      allergy: '',
    ),

    const Product(
      name: 'LOBSTER ROLL',
      category: 'Uramaki',
      price: 18,
      description: 'astice al vapore e tobiko',
      allergy: '',
    ),
    const Product(
      name: 'AMA EBI ROLL',
      category: 'Uramaki',
      price: 14,
      description: 'gambero rosso fresco, avocado e tobiko',
      allergy: '',
    ),
    const Product(
      name: 'TUNA AVOCADO',
      category: 'Uramaki',
      price: 10,
      description: 'tonno, avocado e tobiko',
      allergy: '',
    ),
    const Product(
      name: 'NIDO ROLL',
      category: 'Uramaki',
      price: 14,
      description: 'cream cheese, avocado, tonno, salmone e pasta kataifi',
      allergy: '',
    ),
    const Product(
      name: 'SPICY SALMON',
      category: 'Uramaki',
      price: 11,
      description:
          'salmone e crunch all’interno, tartare di salmone spicy e lana di peperoncino sopra',
      allergy: '',
    ),
    const Product(
      name: 'SPICY TUNA',
      category: 'Uramaki',
      price: 12,
      description:
          'tonno e crunch all’interno, tartare di tonno spicy e lana di peperoncino sopra',
      allergy: '',
    ),
    const Product(
      name: 'MEI ROLL',
      category: 'Uramaki',
      price: 14,
      description:
          'fior di zucca in tempura, tonno, salsa teriyaki, semi di sesamo aromatizzati',
      allergy: '',
    ),
    const Product(
      name: 'PHILADELPHIA',
      category: 'Uramaki',
      price: 10,
      description: 'salmone, avocado, cream cheese',
      allergy: '',
    ),
    const Product(
      name: 'TIGER ROLL',
      category: 'Uramaki',
      price: 13,
      description:
          'tempura di gamberone, fettine di pesce all’esterno e caviale di salmone',
      allergy: '',
    ),
    const Product(
      name: 'ANGUILLA ROLL',
      category: 'Uramaki',
      price: 14,
      description:
          'anguilla arrosto in salsa dolce, lamine di avocado e salsa teriyaki',
      allergy: '',
    ),
    const Product(
      name: 'MIURA MAKI ',
      category: 'Uramaki',
      price: 9,
      description: 'salmone grigliato, philadelphia e salsa teriyaki',
      allergy: '',
    ),
    const Product(
      name: 'AMONDO PHILADELPHIA',
      category: 'Uramaki',
      price: 10,
      description: 'tartare di salmone, cream cheese e mandorle tostate',
      allergy: '',
    ),
    const Product(
      name: 'FRAGOLA MAKI (6 pezzi)',
      category: 'Uramaki',
      price: 10,
      description:
          'hosomaki ripieno di salmone, fritto all’esterno, cream cheese, fragole e salsa teriyaki',
      allergy: '',
    ),
    const Product(
      name: 'SALMON EBI TEN',
      category: 'Uramaki',
      price: 14,
      description:
          'gambero in tempura, tartare di salmone scottato, avocado, salsa mayo, salsa teriyaki, tobiko',
      allergy: '',
    ),
    const Product(
      name: 'TEMPURA MAKI',
      category: 'Uramaki',
      price: 12,
      description:
          'salmone, cream cheese, lamine di tempura e avocado all’esterno',
      allergy: '',
    ),
    const Product(
      name: 'TRUFFLE ROLL',
      category: 'Uramaki',
      price: 16,
      description:
          'tartare di pesce bianco, gambero fritto e scaglie di tartufo',
      allergy: '',
    ),
    const Product(
      name: 'SCAMPO ROLL',
      category: 'Uramaki',
      price: 16,
      description:
          'scampi, mango fresco, philadelphia, arachidi croccanti chiuso dall’alga di tofu',
      allergy: '',
    ),
    const Product(
      name: 'EBI UNAGHI',
      category: 'Uramaki',
      price: 16,
      description:
          'gambero a vapore, avocado, copertura di anguilla caramellata e lamine di tempura',
      allergy: '',
    ),
    const Product(
      name: 'EBITEN URAMAKI ',
      category: 'Uramaki',
      price: 10,
      description: 'gamberone in tempura, pasta kataifi, mayo e salsa teriyaki',
      allergy: '',
    ),
    const Product(
      name: 'IMPERIAL EBITEN',
      category: 'Uramaki',
      price: 12,
      description:
          'gamberone fritto all’interno, avocado esterno, mayo al nero di seppia e teriyaki',
      allergy: '',
    ),
    const Product(
      name: 'HANA ROLL',
      category: 'Uramaki',
      price: 16,
      description:
          'tartare di salmone cotto all’interno, avocado esterno, tartare di astice condito sopra, kataifi e teriyaki',
      allergy: '',
    ),
    const Product(
      name: 'AMAEBI TRUFFLE ROLL',
      category: 'Uramaki',
      price: 18,
      description:
          'salmone e cream cheese all’interno con sopra gambero rosso crudo e tartufo nero',
      allergy: '',
    ),
    const Product(
      name: 'SNOW',
      category: 'Uramaki',
      price: 16,
      description:
          'gambero fritto, avocado esterno, tartare di astice condito sopra e mayo',
      allergy: '',
    ),

////futomaki

    const Product(
      name: 'CALIFORNIA FUTOMAKI',
      category: 'Futomaki',
      price: 5,
      description: 'polpa di granchio, avocado, cetriolo e salsa mayo',
      allergy: '',
    ),

    const Product(
      name: 'FUTOMAKI EBITEN',
      category: 'Futomaki',
      price: 6.5,
      description:
          'gambero in tempura, insalata, tobiko, salsa teriyaki e chips di patate',
      allergy: '',
    ),

    const Product(
      name: 'HOT ROLL FRITTO',
      category: 'Futomaki',
      price: 7,
      description: 'salmone, gambero cotto, avocado, e salsa mayo',
      allergy: '',
    ),
    ///////compositione sushi

    const Product(
      name: 'NIGIRI SPECIA',
      category: 'Composizioni Sushi',
      price: 14,
      description: '6 nigiri special misti',
      allergy: '',
    ),
    const Product(
      name: 'SUSA HU ',
      category: 'Composizioni Sushi',
      price: 14,
      description: '6 sashimi, 6 nigiri',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN TASTE',
      category: 'Composizioni Sushi',
      price: 16,
      description: '5 gunkan misti',
      allergy: '',
    ),
    //////////

    const Product(
      name: 'SALMON SASHIM',
      category: 'Composizioni sashimi',
      price: 7,
      description: '6 pezzi',
      allergy: '',
    ),
    const Product(
      name: 'TUNA SASHIMI',
      category: 'Composizioni sashimi',
      price: 8,
      description: '6 pezzi',
      allergy: '',
    ),
    const Product(
      name: 'SASHIMI MIX',
      category: 'Composizioni sashimi',
      price: 14,
      description: '12 pezzi',
      allergy: '',
    ),
//// compositioni yoku

    const Product(
      name: 'SMALL',
      category: 'Composizioni Yoku',
      price: 20,
      description:
          '1 persona, 17 pezzi, 3 sashimi, 4 uramaki, 3 hosomaki, 6 nigiri, 1 gunkan',
      allergy: '',
    ),
    const Product(
      name: 'LOVE',
      category: 'Composizioni Yoku',
      price: 38,
      description:
          '2 persone, 35 pezzi9 sashimi, 8 uramaki, 6 hosomaki, 8 nigiri, 4 futomaki',
      allergy: '',
    ),
    const Product(
      name: 'PARTY',
      category: 'Composizioni Yoku',
      price: 60,
      description:
          '3 persone, 65 pezzi 12 sashimi, 16 uramaki, 12 hosomaki, 14 nigiri, 4 futomaki, 3 gunkan',
      allergy: '',
    ),
    //////

    const Product(
      name: 'VEGETAL NIGIRI (6 pezzi)',
      category: 'Sushi Vegetariano',
      price: 12,
      description: 'composizione di nigiri misti',
      allergy: '',
    ),
    const Product(
      name: 'GUNKAN WAKAME (2 pezzi) 1',
      category: 'Sushi Vegetariano',
      price: 5,
      description: 'alga esterna, insalata di alga wakame',
      allergy: '',
    ),
    const Product(
      name: 'JUST VEGETAL URAMAKI (8 pezzi)',
      category: 'Sushi Vegetariano',
      price: 8,
      description: 'avocado, cetriolo, alga wakame, insalata e semi di sesamo',
      allergy: '',
    ),
    const Product(
      name: 'VEG ROLL URAMAKI (8 pezzi)',
      category: 'Sushi Vegetariano',
      price: 8,
      description: 'avocado, asparago, cream cheese e chips di patate',
      allergy: '',
    ),
    const Product(
      name: 'SUSHI TREE',
      category: 'Sushi Vegetariano',
      price: 20,
      description: '6 nigiri, 8 uramaki, 3 hosomaki, 1 gunkan',
      allergy: '',
    ),
    const Product(
      name: ' FUTO TOFU (6 pezzi) ',
      category: 'Sushi Vegetariano',
      price: 9,
      description:
          'futomaki con tofu avvolto da fiore di zucca fritto, alga wakame, semi di sesamo e salsa agrodolce',
      allergy: '',
    ),
    const Product(
      name: 'NIGIRI AVOCADO',
      category: 'Sushi Vegetariano',
      price: 5,
      description: '2 nigiri con lamine di avocado',
      allergy: '',
    ),

    ///chirashi
    const Product(
      name: 'CIRASHI MIX',
      category: 'Cirashi',
      price: 12,
      description: 'pesce misto',
      allergy: '',
    ),
    const Product(
      name: 'SAKE DON',
      category: 'Cirashi',
      price: 10,
      description: 'salmone',
      allergy: '',
    ),
    const Product(
      name: 'MAGURO DON',
      category: 'Cirashi',
      price: 11,
      description: 'tonno',
      allergy: '',
    ),
    const Product(
      name: 'UNAGHI DON',
      category: 'Cirashi',
      price: 12,
      description: 'riso bianco con anguilla arrosto',
      allergy: '',
    ),
////zuppe
    const Product(
      name: 'MISO SHIRU',
      category: 'Zuppe',
      price: 3.5,
      description: 'zuppa di soia con alghe, tofu e erba cipollina',
      allergy: '',
    ),
    const Product(
      name: 'YASAI SOUP SPICY ',
      category: 'Zuppe',
      price: 5,
      description:
          'zuppa piccante di verdure miste, tofu, uovo, funghi e bambù',
      allergy: '',
    ),
    const Product(
      name: 'COCCO THAI SŪPE',
      category: 'Zuppe',
      price: 6,
      description: 'zuppa di cocco thai con gamberi',
      allergy: '',
    ),

    ///
    const Product(
      name: 'GOHAN',
      category: 'Riso',
      price: 3.5,
      description: 'riso bianco',
      allergy: '',
    ),
    const Product(
      name: 'YAKI MESHI',
      category: 'Riso',
      price: 7,
      description: 'riso saltato con verdure di stagione e uovo',
      allergy: '',
    ),
    const Product(
      name: 'SAKE MESHI',
      category: 'Riso',
      price: 8,
      description: 'riso saltato con salmone, verdure e uovo',
      allergy: '',
    ),
    const Product(
      name: '',
      category: 'Riso',
      price: 0,
      description: '',
      allergy: '',
    ),
    const Product(
      name: 'STREET RICE',
      category: 'Riso',
      price: 8,
      description: 'riso al curry con carne di vitello e uovo',
      allergy: '',
    ),
    const Product(
      name: 'SEAFOOD RICE',
      category: 'Riso',
      price: 14,
      description: 'riso su pietra lavica con misto mare, verdure e uovo',
      allergy: '',
    ),
    const Product(
      name: 'BEEF RICE',
      category: 'Riso',
      price: 12,
      description: 'riso su pietra lavica con manzo, peperoni e uovo',
      allergy: '',
    ),

// ///// pasts in brodo

    const Product(
      name: 'SOBA',
      category: 'Pasta in brodo',
      price: 8,
      description: 'spaghetti di grano saraceno in brodo di misto mare',
      allergy: '',
    ),
    const Product(
      name: 'RAMEN',
      category: 'Pasta in brodo',
      price: 8,
      description: 'spaghetti di riso in brodo con uova, alghe e misto mare',
      allergy: '',
    ),
    const Product(
      name: 'GYONIKU UDON',
      category: 'Pasta in brodo',
      price: 8,
      description: 'spaghetti di riso con manzo',
      allergy: '',
    ),
///////pasta saltata
    const Product(
      name: 'YAKI UDON',
      category: 'Pasta saltata',
      price: 8,
      description: 'spaghetti di riso con gamberi e verdure',
      allergy: '',
    ),
    const Product(
      name: 'YAKI SOBA',
      category: 'Pasta saltata',
      price: 8,
      description: 'spaghetti di grano saraceno con gamberi e verdure',
      allergy: '',
    ),
    const Product(
      name: 'YAKI SOBA GREEN ',
      category: 'Pasta saltata',
      price: 8,
      description: 'spaghetti al the verde con gamberi e verdure',
      allergy: '',
    ),
    const Product(
      name: 'NIKU UDON',
      category: 'Pasta saltata',
      price: 8,
      description: 'spaghetti di riso con manzo e verdure',
      allergy: '',
    ),
    const Product(
      name: 'NIKU SOBA',
      category: 'Pasta saltata',
      price: 8,
      description: 'spaghetti di grano saraceno con manzo e verdure',
      allergy: '',
    ),
    const Product(
      name: 'SAKE GREEN',
      category: 'Pasta saltata',
      price: 8,
      description: 'spaghetti al the verde con salmone e lana d’alga',
      allergy: '',
    ),
    const Product(
      name: 'UDON UMI',
      category: 'Pasta saltata',
      price: 9,
      description: 'spaghetti di riso con misto mare',
      allergy: '',
    ),
    const Product(
      name: 'SPAGHETTI DI SOIA',
      category: 'Pasta saltata',
      price: 8,
      description: 'spaghetti di soia con gamberi e verdure',
      allergy: '',
    ),
    const Product(
      name: 'PAD THAI',
      category: 'Pasta saltata',
      price: 9.5,
      description: 'tagliatelle di riso con misto mare e arachidi',
      allergy: '',
    ),

    /////tempura
    const Product(
      name: 'YASAI TEMPURA',
      category: 'Tempura',
      price: 8,
      description: 'tempura di verdure di stagione',
      allergy: '',
    ),
    const Product(
      name: 'EBI TEMPURA',
      category: 'Tempura',
      price: 12,
      description: 'tempura di gamberoni',
      allergy: '',
    ),
    const Product(
      name: 'MIX TEMPURA',
      category: 'Tempura',
      price: 12,
      description: 'tempura di gamberoni e verdure',
      allergy: '',
    ),

// ////piastra
    const Product(
      name: 'YAKI TORI ',
      category: 'Piastra',
      price: 8,
      description:
          'spiedini di pollo alla pistra con asparagi in salsa teryaki',
      allergy: '',
    ),
    const Product(
      name: 'SAKE TEPPAN',
      category: 'Piastra',
      price: 10,
      description: 'filetto di salmone alla piastra',
      allergy: '',
    ),
    const Product(
      name: 'MAGURO TEPPAN',
      category: 'Piastra',
      price: 11,
      description: 'filetto di tonno alla piastra',
      allergy: '',
    ),
    const Product(
      name: 'EBI SHINO YAKI',
      category: 'Piastra',
      price: 8,
      description: 'spiedini di gamberi',
      allergy: '',
    ),

//////verdure
    const Product(
      name: 'YASAI',
      category: 'Verdure',
      price: 6.5,
      description: 'cavolo orientale al salto',
      allergy: '',
    ),
    const Product(
      name: 'YASAINO TEPPAN YAKI',
      category: 'Verdure',
      price: 6.5,
      description: 'misto di verdure di stagione saltate',
      allergy: '',
    ),
    //////
    const Product(
      name: 'BIBITE',
      category: 'Bevande',
      price: 3.5,
      description: '',
      allergy: '',
    ),
    const Product(
      name: 'ACQUA',
      category: 'Bevande',
      price: 3.5,
      description: '',
      allergy: '',
    ),
    const Product(
      name: 'LOTTE SAKE',
      category: 'Bevande',
      price: 5,
      description: '',
      allergy: '',
    ),
    const Product(
      name: 'THE VERDE CALDO ORIENTALE',
      category: 'Bevande',
      price: 3.5,
      description: '',
      allergy: '',
    ),
////bevande
    const Product(
      name: 'ASHAI 0,50 L',
      category: 'Birre',
      price: 6,
      description: 'fresca dall’aroma lievemente fruttato',
      allergy: '',
    ),
    const Product(
      name: 'SAPORO SILVER 0,50 L',
      category: 'Birre',
      price: 6,
      description: 'gusto deciso e leggermente amaro',
      allergy: '',
    ),
    const Product(
      name: 'SAPORO SILVER IMPORT 0,65 L',
      category: 'Birre',
      price: 7.5,
      description: 'gusto deciso e leggermente amaro',
      allergy: '',
    ),
    const Product(
      name: 'SPINA 0,20 L',
      category: 'Birre',
      price: 3,
      description: '',
      allergy: '',
    ),
    const Product(
      name: 'SPINA 0,40 L',
      category: 'Birre',
      price: 5,
      description: '',
      allergy: '',
    ),
  ];

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
