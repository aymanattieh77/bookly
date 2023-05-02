import 'package:bookly/app/constants.dart';
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
    const heightSpace = SizedBox(height: AppSizes.s5);
    return Row(
      children: [
        const CustomBookImage(),
        const SizedBox(width: AppSizes.s30),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'Harry Potter\nand the Goblet of Fire',
                  style:
                      AppStyles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              heightSpace,
              const Text(
                'J.K. Rowling',
                style: AppStyles.textStyle14,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              heightSpace,
              Row(
                children: const [
                  Text(
                    '19.99 €',
                    style: AppStyles.textStyle20,
                  ),
                  Spacer(),
                  BookRating(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
