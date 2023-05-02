import 'package:bookly/app/constants.dart';
import 'package:bookly/data/responses/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class APIService {
  factory APIService(Dio dio, {String? baseUrl}) = _APIService;

  @GET('volumes')
  Future<BookItemsResponse> getBooksItems(@Query('q') String q);
}
