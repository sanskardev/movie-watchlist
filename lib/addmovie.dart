import 'package:flutter/material.dart';

class AddMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Movie"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Movie Name",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Director Name",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: null,
              child: Container(
                child: Text("Add"),
                margin: EdgeInsets.all(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
