import 'package:hive/hive.dart';

import './moviedescription.dart';

class Boxes {
  static Box<MovieDescription> getMovieDescription() {
    return Hive.box<MovieDescription>('Movies');
  }
}
