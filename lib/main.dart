import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:movie_watchlist/homescreen.dart';
import 'package:movie_watchlist/moviedescription.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(MovieDescriptionAdapter());

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
      title: "Your Watchlist",
      theme: ThemeData(primaryColor: Colors.blue.shade900),
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
