import 'package:flutter/material.dart';

import 'addmovie.dart';
import './movie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue.shade900),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Watchlist'),
        ),
        body: ListView(
          children: [
            Movie(movieName: "Movie Name", directorName: "Director Name"),
            Movie(movieName: "Movie Name", directorName: "Director Name"),
            Movie(movieName: "Movie Name", directorName: "Director Name"),
            Movie(movieName: "Movie Name", directorName: "Director Name"),
          ],
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return AddMovie();
              }));
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
