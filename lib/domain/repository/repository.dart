import 'package:bookly/data/errors/failure.dart';
import 'package:bookly/domain/models/book_model/book_item.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, List<BookItem>>> fetchBooks(String q,
      {bool free = false,
      bool paid = false,
      bool newest = false,
      bool relevance = false});
}
