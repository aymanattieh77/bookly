import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.s100,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: Image.asset(AssetsImagePath.testImage),
      ),
    );
  }
}
