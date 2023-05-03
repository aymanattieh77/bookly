import 'package:bookly/app/constants.dart';
import 'package:bookly/data/responses/book_api_response/book_api_response.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class APIService {
  factory APIService(Dio dio, {String? baseUrl}) = _APIService;

  @GET('volumes')
  Future<BookApiResponse> getBooksItems(@Query('q') String q);
}
