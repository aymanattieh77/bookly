import 'package:bookly/app/constants.dart';

import 'package:bookly/domain/models/book_model/book_model.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class APIService {
  factory APIService(Dio dio, {String? baseUrl}) = _APIService;

  @GET('volumes')
  Future<BookModel> fetchBooks(
    @Query('q') String q, {
    @Query('Filtering') String filtering = 'ebooks',
    @Query('orderBy') String orderBy = 'newest',
  });
}
