import 'package:bookly/data/errors/failure.dart';
import 'package:bookly/data/responses/book_api_response/book_api_response.dart';
import 'package:either_dart/either.dart';

abstract class Repository {
  Future<Either<Failure, BookApiResponse>> getBooksItems(String q);
}
