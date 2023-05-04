import 'package:bookly/domain/models/book_models/book_volume.dart';
import 'package:bookly/presentation/home/views/widgets/common/book_rating.dart';
import 'package:bookly/presentation/home/views/widgets/common/custom_book_image.dart';

import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({super.key, required this.bookVolume});
  final BookVolume bookVolume;
  @override
  Widget build(BuildContext context) {
    const heightSpace = SizedBox(height: AppSizes.s5);
    return Row(
      children: [
        CustomBookImage(imageUrl: bookVolume.imageUrl),
        const SizedBox(width: AppSizes.s30),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  bookVolume.title,
                  style:
                      AppStyles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              heightSpace,
              Text(
                bookVolume.authors.isNotEmpty ? bookVolume.authors[0] : '',
                style: AppStyles.textStyle14,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              heightSpace,
              Row(
                children: [
                  const Text(
                    'Free',
                    style: AppStyles.textStyle20,
                  ),
                  const Spacer(),
                  BookRating(
                    rating: bookVolume.averageRating.toString(),
                    ratingCount: bookVolume.ratingsCount.toString(),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
