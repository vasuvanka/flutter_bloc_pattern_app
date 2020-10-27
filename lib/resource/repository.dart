import 'dart:async';
import 'package:flutter_bloc_pattern_app/models/items_model.dart';

import 'movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemList> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
