import 'package:bookly/presentation/home/views/widgets/common/book_rating.dart';
import 'package:bookly/presentation/home/views/widgets/common/custom_book_image.dart';

import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: AppPadding.p30, right: AppPadding.p10),
      child: Row(
        children: [
          const CustomBookImage(),
          const SizedBox(width: AppSizes.s15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Harry Potter\nand the Goblet of Fire',
                  style: AppStyles.titleMedium,
                ),
                const SizedBox(height: 5),
                const Text(
                  'J.K. Rowling',
                  style: AppStyles.subTitleSmall,
                ),
                const SizedBox(height: 5),
                Row(
                  children: const [
                    Text(
                      '19.99 €',
                      style: AppStyles.titleMedium,
                    ),
                    Spacer(),
                    BookRating(),
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
