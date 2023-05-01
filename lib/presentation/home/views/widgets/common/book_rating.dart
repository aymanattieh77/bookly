import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const widthSpace = SizedBox(width: AppSizes.s5);
    return Row(
      children: [
        widthSpace,
        SvgPicture.asset(AssetsIconsPath.star),
        widthSpace,
        const Text(
          '4.8',
          style: AppStyles.textStyle16,
        ),
        widthSpace,
        Text(
          '(2390)',
          style: AppStyles.textStyle14.copyWith(color: ColorManager.darkGrey),
        ),
        widthSpace,
      ],
    );
  }
}
