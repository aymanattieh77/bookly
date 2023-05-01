import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 5),
        SvgPicture.asset(AssetsIconsPath.star),
        const SizedBox(width: 5),
        Text(
          '4.8',
          style: getRegularTextStyle(),
        ),
        const SizedBox(width: 5),
        Text(
          '(2390)',
          style: getRegularTextStyle3(),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
