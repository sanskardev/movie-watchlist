import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import './boxes.dart';

import './moviedescription.dart';

class EditMovie extends StatelessWidget {
  final movieNameController;
  final directorNameController;
  EditMovie(this.movieNameController, this.directorNameController);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Movie"),
      ),
      body: Column(
        children: [
          _TextBox("Movie Name", movieNameController),
          _TextBox("Director Name", directorNameController),
          _SubmitBtn("Add Movie", movieNameController, directorNameController),
        ],
      ),
    );
  }
}

class _SubmitBtn extends StatelessWidget {
  final String text;
  final movieNameController;
  final directorNameController;
  _SubmitBtn(this.text, this.movieNameController, this.directorNameController);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          if (movieNameController.text.length > 0 &&
              directorNameController.text.length > 0) {
            var movieDescription = MovieDescription(
              movieNameController.text,
              directorNameController.text,
            );

            final box = Boxes.getMovieDescription();
            box.put(movieDescription.key, movieDescription);

            movieNameController.clear();
            directorNameController.clear();
            Navigator.pop(context);
          }
        },
        child: Container(
          child: Text(text),
          margin: EdgeInsets.all(20),
        ),
      ),
    );
  }
}

class _TextBox extends StatelessWidget {
  final String text;
  final textEditingController;
  _TextBox(this.text, this.textEditingController);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: text,
        ),
      ),
    );
  }
}
