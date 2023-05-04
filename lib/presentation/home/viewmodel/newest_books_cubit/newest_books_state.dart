// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  final String message;
  const NewestBooksFailure({
    required this.message,
  });
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookItem> items;
  const NewestBooksSuccess({
    required this.items,
  });
}
