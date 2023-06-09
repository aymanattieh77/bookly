import 'package:bookly/data/date_source/remote_data_source.dart';
import 'package:bookly/data/errors/error_handler.dart';
import 'package:bookly/data/network/network_info.dart';

import 'package:bookly/data/errors/failure.dart';
import 'package:bookly/data/responses/book_model/book_item.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepositoryImpl implements Repository {
  final RemoteDateSource _remoteDateSource;
  final NetworkInfo _networkInfo;
  RepositoryImpl(this._remoteDateSource, this._networkInfo);
  @override
  Future<Either<Failure, List<BookItem>>> fetchBooks(String q,
      {bool free = false,
      bool paid = false,
      bool newest = false,
      bool relevance = false}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDateSource.fetchBooks(q,
            free: free, paid: paid, relevance: relevance, newest: newest);

        List<BookItem> items = response.items ?? [];

        return Right(items);
      } catch (e) {
        if (e is DioError) {
          return Left(ErrorHandler.fromDioError(e));
        } else {
          print(e.toString());
          return Left(Failure(1, e.toString()));
        }
      }
    } else {
      return Left(ResponseStatusCode.noIntenetConnection.getFailure());
    }
  }
}
