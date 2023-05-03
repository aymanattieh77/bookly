import 'package:bookly/domain/models/book_model/book_item.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feature_books_cubit_state.dart';

class FeatureBooksCubitCubit extends Cubit<FeatureBooksCubitState> {
  FeatureBooksCubitCubit(this._repository) : super(FeatureBooksCubitInitial());

  final Repository _repository;

  fetchFeaturedBooks() async {
    emit(FeatureBooksCubitLoading());

    (await _repository.fetchBooks('batman', relevance: true)).fold(
      (failure) {
        emit(FeatureBooksCubitFailure(message: failure.message));
      },
      (items) {
        emit(FeatureBooksCubitSuccess(items: items));
      },
    );
  }
}
