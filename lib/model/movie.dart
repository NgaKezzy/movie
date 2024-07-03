import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Movie {
  String title;
  String backDropPath;
  String overview;
  String posterPath;
  String releaseDate;
  String voteAverage;
  Movie({
    required this.title,
    required this.backDropPath,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'backDropPath': backDropPath,
      'overview': overview,
      'posterPath': posterPath,
      'releaseDate': releaseDate,
      'voteAverage': voteAverage,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      title: map['title'],
      backDropPath: map['backDropPath'],
      overview: map['overview'],
      posterPath: map['posterPath'],
      releaseDate: map['releaseDate'],
      voteAverage: map['voteAverage'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source) as Map<String, dynamic>);
}
