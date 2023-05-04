import 'package:bookly/data/network/api_service.dart';
import 'package:bookly/data/responses/book_model/book_model.dart';

abstract class RemoteDateSource {
  Future<BookModel> fetchBooks(String q,
      {bool free = false,
      bool paid = false,
      bool newest = false,
      bool relevance = false});
}

class RemoteDataSourceImpl implements RemoteDateSource {
  final APIService _apiService;
  RemoteDataSourceImpl(this._apiService);

  @override
  Future<BookModel> fetchBooks(String q,
      {bool free = false,
      bool paid = false,
      bool newest = false,
      bool relevance = false}) async {
    String filtering = getFilteringQuery(free, paid);
    String sorting = getSotingQuery(newest, relevance);

    return await _apiService.fetchBooks(q,
        filtering: filtering, orderBy: sorting);
  }
}

String getFilteringQuery(bool free, bool paid) {
  if (free && paid) {
    return 'ebooks';
  } else if (free == true && paid == false) {
    return 'free-ebooks';
  } else if (paid == true && free == false) {
    return 'paid-ebooks';
  } else {
    return 'ebooks';
  }
}

String getSotingQuery(bool newest, bool relevance) {
  if (newest & relevance) {
    return 'relevance';
  } else if (newest == true && relevance == false) {
    return 'newest';
  } else if (relevance == true && newest == false) {
    return 'relevance';
  } else {
    return 'relevance'; //default
  }
}
