import 'package:bookly/domain/models/book_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'responses.g.dart';

@JsonSerializable()
class BookItemsResponse {
  String? kind;
  int? totalItems;
  List<BookItem>? items;
  BookItemsResponse(this.kind, this.totalItems, this.items);
  factory BookItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$BookItemsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BookItemsResponseToJson(this);
}
