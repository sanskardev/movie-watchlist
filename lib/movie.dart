import 'package:flutter/material.dart';
import 'package:movie_watchlist/editmovie.dart';
import 'package:movie_watchlist/moviedescription.dart';

import 'boxes.dart';
import 'editmovie.dart';
import 'moviedescription.dart';

class Movie extends StatelessWidget {
  final movieDescription;
  final movieNameController;
  final directorNameController;

  Movie(this.movieDescription, this.movieNameController,
      this.directorNameController);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.blue.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          movieText(context),
          Row(
            children: [
              editButton(context),
              deleteButton(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget editButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return EditMovie(movieNameController, directorNameController);
        }));
      },
      child: Icon(
        Icons.edit,
        color: Colors.blue.shade400,
      ),
    );
  }

  Widget deleteButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        var movieDescription = MovieDescription(
            movieNameController.text, directorNameController.text);

        final box = Boxes.getMovieDescription();
        box.delete(movieDescription.key);
      },
      child: Icon(
        Icons.delete,
        color: Colors.red.shade900,
      ),
    );
  }

  Widget movieText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movieDescription.movieName,
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue.shade800,
          ),
        ),
        Text(
          movieDescription.directorName,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
