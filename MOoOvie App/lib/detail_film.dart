import 'package:flutter/material.dart';
import 'package:my_movies/model/film.dart';

class DetailFilm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Detail Film'),
      //   backgroundColor: Colors.white12,
      // ),
      backgroundColor: Colors.white12,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/avengers_landscape.png'),
              Container(
                margin: EdgeInsets.only(left: 16.0, top: 16.0,bottom: 4.0, right: 32.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4.0),
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
                      padding: EdgeInsets.all(4.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: (){},
                      ),
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
                        '8.4',
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
                        '3h 1min',
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
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 4.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white70,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'Action',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:4.0, right: 4.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white70,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'Adventure',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:4.0, right: 4.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white70,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text(
                        'Drama',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32.0, bottom: 4.0, left: 16.0),
                child:  Text(
                  'Synopsis',
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
                  'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos actions and restore balance to the universe.',
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