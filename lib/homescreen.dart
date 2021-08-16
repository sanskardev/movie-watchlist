import 'package:flutter/material.dart';

import 'movie.dart';
import 'addmovie.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
