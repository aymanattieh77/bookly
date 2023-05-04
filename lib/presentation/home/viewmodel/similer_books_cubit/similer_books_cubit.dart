import 'package:bookly/data/responses/book_model/book_item.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this._repository) : super(SimilerBooksInitial());

  final Repository _repository;

  fetchSimilerBooks() async {
    emit(SimilerBooksLoading());

    (await _repository.fetchBooks('Marvel', newest: true)).fold(
      (failure) {
        emit(SimilerBooksFailure(message: failure.message));
      },
      (items) {
        emit(SimilerBooksSuccess(items: items));
      },
    );
  }
}
