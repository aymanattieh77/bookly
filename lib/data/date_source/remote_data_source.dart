import 'package:bookly/data/network/api_service.dart';
import 'package:bookly/data/responses/book_api_response/book_api_response.dart';

abstract class RemoteDateSource {
  Future<BookApiResponse> getBooksItems(String q);
}

class RemoteDataSourceImpl implements RemoteDateSource {
  final APIService _apiService;
  RemoteDataSourceImpl(this._apiService);
  @override
  Future<BookApiResponse> getBooksItems(String q) async {
    return await _apiService.getBooksItems(q);
  }
}
