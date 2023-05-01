import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: AppPadding.p30, right: AppPadding.p10),
      child: Row(
        children: [
          SizedBox(
            height: 113,
            width: 86,
            child: Image.asset(AssetsImagePath.testImage),
          ),
          const SizedBox(width: AppSizes.s15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter\nand the Goblet of Fire',
                  style: getRegularTextStyle2(),
                ),
                const SizedBox(height: 5),
                Text(
                  'J.K. Rowling',
                  style: getRegularTextStyle3(),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: getRegularTextStyle(),
                    ),
                    const Spacer(),
                    Row(
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
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
