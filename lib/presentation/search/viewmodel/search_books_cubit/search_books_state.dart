part of 'search_books_cubit.dart';

abstract class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

class SearchBooksInitial extends SearchBooksState {}

class SearchBooksLoading extends SearchBooksState {}

class SearchBooksFailure extends SearchBooksState {
  final String message;
  const SearchBooksFailure({required this.message});
}

class SearchBooksSuccess extends SearchBooksState {
  final List<BookItem> items;
  const SearchBooksSuccess({required this.items});
}
