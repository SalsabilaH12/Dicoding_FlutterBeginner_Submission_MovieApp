import 'package:flutter/material.dart';
import 'package:my_movies/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      // home: DetailFilm(),
      home: HomeScreen(),
    );
  }
}

