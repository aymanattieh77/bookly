import 'package:bookly/presentation/home/views/widgets/book_rating.dart';
import 'package:bookly/presentation/home/views/widgets/custom_book_item.dart';
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
          const CustomBookItem(),
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
                    const BookRating(),
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
