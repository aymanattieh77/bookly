import 'package:bookly/data/responses/book_model/book_item.dart';

import 'package:bookly/domain/models/book_models/book_volume.dart';

extension BookItemExtension on BookItem {
  BookVolume toDomain() {
    return BookVolume(
      id: id ?? "",
      imageUrl: getImage(),
      title: volumeInfo == null ? "" : volumeInfo!.title ?? "",
      subtitle: volumeInfo == null ? "" : volumeInfo!.subtitle ?? "",
      publisher: volumeInfo == null ? "" : volumeInfo!.publisher ?? "",
      publishedDate: volumeInfo == null ? "" : volumeInfo!.publishedDate ?? "",
      authors: volumeInfo == null ? [] : volumeInfo!.authors ?? [],
      price: getPrice().toDouble(),
      pageCount: volumeInfo == null ? 0 : volumeInfo!.pageCount ?? 0,
      categories: volumeInfo == null ? [] : volumeInfo!.categories ?? [],
      averageRating: volumeInfo == null
          ? 3.5
          : volumeInfo!.averageRating?.toDouble() ?? 3.5,
      ratingsCount:
          volumeInfo == null ? 0 : volumeInfo!.ratingsCount?.toInt() ?? 0,
    );
  }

  num getPrice() {
    if (saleInfo != null) {
      return saleInfo!.listPrice == null
          ? 0.0
          : saleInfo!.listPrice!.amount ?? 0.0;
    } else {
      return 0.0;
    }
  }

  String getImage() {
    if (volumeInfo != null) {
      return volumeInfo!.imageLinks == null
          ? ""
          : volumeInfo!.imageLinks!.thumbnail ?? "";
    } else {
      return "";
    }
  }
}
