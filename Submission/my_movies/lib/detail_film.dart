import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_movies/model/film.dart';
import 'package:my_movies/home_screen.dart';

class DetailFilm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Film'),
      ),
      backgroundColor: Colors.white12,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/avengers_landscape.png'),
              Container(
                margin: EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Avengers: End Game',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: (){},
                      ),
                    ),

                  ],
                ),
              ),
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
            ],

          ),
        ),
      ),
    );
  }
}