import 'package:flutter/material.dart';
import 'package:my_movies/model/film.dart';
import 'package:my_movies/detail_film.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 32.0, bottom: 8.0),
                child: Text(
                  'MOoOvie',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset('images/raya_landscape.jpg'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, top: 16.0),
                padding: EdgeInsets.all(4.0),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    final Film film = FilmList[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DetailFilm(film: film);
                        }));
                      },
                      child: SizedBox(
                        height: 300,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child: Image.asset(film.posterPotrait),
                                ),
                              ),
                            ),
                            Text(
                              film.title,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(4.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    film.rating,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: FilmList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}