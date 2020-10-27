import 'package:flutter_bloc_pattern_app/models/items_model.dart';
import 'package:flutter_bloc_pattern_app/resource/repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc {
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<ItemList>();

  Observable<ItemList> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    ItemList itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();
