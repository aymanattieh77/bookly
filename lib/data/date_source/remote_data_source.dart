import 'package:bookly/data/network/api_service.dart';
import 'package:bookly/data/responses/responses.dart';

abstract class RemoteDateSource {
  Future<BookItemsResponse> getBooksItems(String q);
}

class RemoteDataSourceImpl implements RemoteDateSource {
  final APIService _apiService;
  RemoteDataSourceImpl(this._apiService);
  @override
  Future<BookItemsResponse> getBooksItems(String q) async {
    return await _apiService.getBooksItems(q);
  }
}
