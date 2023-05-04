import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.s220,
      child: AspectRatio(
          aspectRatio: 2 / 3, child: CachedNetworkImage(imageUrl: imageUrl)),
    );
  }
}
