part of 'similer_books_cubit.dart';

abstract class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

class SimilerBooksInitial extends SimilerBooksState {}

class SimilerBooksLoading extends SimilerBooksState {}

class SimilerBooksFailure extends SimilerBooksState {
  final String message;
  const SimilerBooksFailure({
    required this.message,
  });
}

class SimilerBooksSuccess extends SimilerBooksState {
  final List<BookItem> items;
  const SimilerBooksSuccess({
    required this.items,
  });
}
