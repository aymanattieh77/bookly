import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.s220,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Image.asset(
          AssetsImagePath.testImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
