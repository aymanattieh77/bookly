import 'package:bookly/presentation/resources/assets.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 113,
      width: 86,
      child: Image.asset(AssetsImagePath.testImage),
    );
  }
}
