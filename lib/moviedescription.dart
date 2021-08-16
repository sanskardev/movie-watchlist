import 'package:hive/hive.dart';

part 'moviedescription.g.dart';

@HiveType(typeId: 0)
class MovieDescription extends HiveObject {
  @HiveField(0)
  final String movieName;

  @HiveField(1)
  final String directorName;

  MovieDescription(this.movieName, this.directorName);
}
