import 'package:bookly/data/date_source/remote_data_source.dart';
import 'package:bookly/data/errors/error_handler.dart';
import 'package:bookly/domain/models/book_model/book_item.dart';
import 'package:bookly/data/errors/failure.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepositoryImpl implements Repository {
  final RemoteDateSource _remoteDateSource;
  RepositoryImpl(this._remoteDateSource);
  @override
  Future<Either<Failure, List<BookItem>>> fetchBooks(String q,
      {bool free = false,
      bool paid = false,
      bool newest = false,
      bool relevance = false}) async {
    try {
      print('start');
      final response = await _remoteDateSource.fetchBooks(q,
          free: free, paid: paid, relevance: relevance, newest: newest);

      List<BookItem> items = response.items ?? [];
      print('end');
      return Right(items);
    } catch (e) {
      if (e is DioError) {
        print(e.toString());
        return Left(ErrorHandler.fromDioError(e));
      } else {
        print(e.toString());
        return Left(Failure(1, e.toString()));
      }
    }
  }
}
