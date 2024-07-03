import 'package:flutter/cupertino.dart';
import 'package:project_watch_movie/api/api.dart';
import 'package:project_watch_movie/model/detail_movie.dart';
import 'package:project_watch_movie/model/movie_information.dart';

class MovieController extends ChangeNotifier {
  List<MovieInformation> movieInformation = [];
  DetailMovie detailMovie = DetailMovie();

  Future<void> getDataMovieInformation() async {
    final response = await FetchApi.getMovies();
    movieInformation = MovieInformation.convertToList(response['items']);
    notifyListeners();
  }

  Future<void> getDetailMovie(String slug) async {
    final response = await FetchApi.getDetailMovie(slug);
    detailMovie = DetailMovie.fromJson(response['movie']);
    print(detailMovie.actor);
    notifyListeners();
  }
}
