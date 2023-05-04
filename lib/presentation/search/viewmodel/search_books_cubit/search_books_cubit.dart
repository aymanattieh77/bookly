import 'package:bookly/data/responses/book_model/book_item.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this._repository) : super(SearchBooksInitial());

  final Repository _repository;

  fetchSearchBooks(String searchText) async {
    emit(SearchBooksLoading());

    (await _repository.fetchBooks(searchText, newest: true)).fold(
      (failure) {
        emit(SearchBooksFailure(message: failure.message));
      },
      (items) {
        emit(SearchBooksSuccess(items: items));
      },
    );
  }
}
