import 'package:bookly/presentation/resources/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.height * 0.11,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Image.asset(AssetsImagePath.testImage),
      ),
    );
  }
}
