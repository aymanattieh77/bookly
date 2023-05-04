class BookVolume {
  final String id;
  final String imageUrl;
  final String title;
  final String subtitle;
  final String publisher;
  final String publishedDate;
  final List<String> authors;
  final double price;
  final int pageCount;
  final List<String> categories;
  final double averageRating;
  final int ratingsCount;
  final String url;
  BookVolume({
    required this.url,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.publisher,
    required this.publishedDate,
    required this.authors,
    required this.price,
    required this.pageCount,
    required this.categories,
    required this.averageRating,
    required this.ratingsCount,
  });
}
