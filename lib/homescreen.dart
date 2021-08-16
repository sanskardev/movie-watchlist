import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_watchlist/movie.dart';

import 'package:movie_watchlist/moviedescription.dart';
import 'boxes.dart';
import 'addmovie.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final movieNameController = TextEditingController();
  final directorNameController = TextEditingController();

  @override
  void dispose() {
    directorNameController.dispose();
    movieNameController.dispose();

    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Watchlist'),
      ),
      body: ValueListenableBuilder<Box<MovieDescription>>(
        valueListenable: Boxes.getMovieDescription().listenable(),
        builder: (context, box, _) {
          final movies = box.values.toList().cast<MovieDescription>();
          return buildContent(movies);
        },
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return AddMovie(movieNameController, directorNameController);
            }));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildContent(List<MovieDescription> movies) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              final movieDescription = movies[index];
              return Movie(movieDescription, movieNameController,
                  directorNameController);
            },
          ),
        )
      ],
    );
  }
}
