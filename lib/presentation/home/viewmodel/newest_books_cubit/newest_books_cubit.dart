import 'package:bookly/data/responses/book_model/book_item.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._repository) : super(NewestBooksInitial());
  final Repository _repository;

  fetchNewsetBooks() async {
    emit(NewestBooksLoading());

    (await _repository.fetchBooks('dc universe', newest: true)).fold(
      (failure) {
        emit(NewestBooksFailure(message: failure.message));
      },
      (items) {
        emit(NewestBooksSuccess(items: items));
      },
    );
  }
}
