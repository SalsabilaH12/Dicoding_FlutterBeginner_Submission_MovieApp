import 'package:flutter/material.dart';
import 'package:my_movies/model/film.dart';

class DetailFilm extends StatelessWidget{
  final Film film;

  DetailFilm({required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(film.posterLandscape),
                  SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, top: 16.0,bottom: 4.0, right: 32.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        film.title,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child:  FavoriteButton(),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 8.0, right: 4.0),
                      child: Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 30.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4.0, right: 32.0),
                      child:  Text(
                        film.rating,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 32.0, right: 4.0),
                      child:   Icon(
                        Icons.access_time,
                        color: Colors.white70,
                        size: 30.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4.0, right: 16.0),
                      child:  Text(
                        film.duration,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32.0, bottom: 8.0, left: 16.0),
                child:  Text(
                  'Genre',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0,top:8.0),
                child: Row(
                  children: film.genre.map((list){
                    return Container(
                      margin: EdgeInsets.only(right: 4.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white70,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        list,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32.0, bottom: 4.0, left: 16.0),
                child:  Text(
                  'Storyline',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child:  Text(
                  film.storyline,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget{
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 40.0,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
