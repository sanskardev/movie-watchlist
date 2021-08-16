import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  final String movieName;
  final String directorName;

  Movie({required this.movieName, required this.directorName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      color: Colors.blue.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movieName,
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue.shade800,
            ),
          ),
          Text(
            directorName,
            style: TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
