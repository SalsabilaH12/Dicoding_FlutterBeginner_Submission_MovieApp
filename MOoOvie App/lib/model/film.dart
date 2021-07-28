class Film{
  String title;
  String rating;
  String storyline;
  String duration;
  String posterPotrait;
  String posterLandscape;
  List<String> genre;

  Film({
    required this.title,
    required this.rating,
    required this.storyline,
    required this.duration,
    required this.posterPotrait,
    required this.posterLandscape,
    required this.genre,
  });
}

var FilmList = [
  Film(
    title: 'Mulan',
    rating: '5.7',
    storyline: 'A young Chinese maiden disguises herself as a male warrior in order to save her father.',
    duration: '1h 55m',
    posterPotrait: 'images/mulan_potrait.png',
    posterLandscape: 'images/mulan_landscape.png',
    genre: [
      'Action', 'Adventure', 'Drama',
    ],
  ),
  Film(
    title: 'Avengers: End Game',
    rating: '8.4',
    storyline: 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos actions and restore balance to the universe.',
    duration: '3h 1m',
    posterPotrait: 'images/avengers_potrait.png',
    posterLandscape: 'images/avengers_landscape.png',
    genre: [
      'Action', 'Adventure', 'Drama',
    ],
  ),
  Film(
    title: 'Luca',
    rating: '7.5',
    storyline: 'On the Italian Riviera, an unlikely but strong friendship grows between a human being and a sea monster disguised as a human.',
    duration: '1h 35m',
    posterPotrait: 'images/luca_potrait.png',
    posterLandscape: 'images/luca_landscape.png',
    genre: [
      'Animation', 'Adventure', 'Comedy',
    ],
  ),
  Film(
    title: 'Raya and The Last Dragon',
    rating: '7.4',
    storyline: 'Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. However, when sinister monsters known as the Druun threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, those same monsters have returned, and it is up to a lone warrior to track down the last dragon and stop the Druun for good.',
    duration: '1h 47m',
    posterPotrait: 'images/raya_potrait.png',
    posterLandscape: 'images/raya_landscape.jpg',
    genre: [
      'Animation', 'Adventure', 'Action',
    ],
  ),
  Film(
    title: 'Nevertheless',
    rating: '7.6',
    storyline: 'The intoxicating charm of a flirtatious art school classmate pulls a reluctant love cynic into a friends-with-benefits relationship.',
    duration: '10 episodes, 1h 10m/episode',
    posterPotrait: 'images/nevertheless_potrait.png',
    posterLandscape: 'images/nevertheless_landscape.png',
    genre: [
      'KDrama', 'Romance',
    ],
  ),
];