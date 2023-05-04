import 'package:bookly/domain/models/book_models/book_volume.dart';
import 'package:bookly/presentation/home/views/widgets/common/book_rating.dart';
import 'package:bookly/presentation/home/views/widgets/details/book_details_image.dart';
import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.bookVolume,
  });
  final BookVolume bookVolume;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BookDetailsImage(imageUrl: bookVolume.imageUrl),
        const SizedBox(height: AppSizes.s20),
        Text(
          bookVolume.title,
          style: AppStyles.textStyle30,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: AppSizes.s10),
        Text(
          bookVolume.authors.isNotEmpty ? bookVolume.authors[0] : '',
          style: AppStyles.textStyle16.copyWith(
              color: ColorManager.white.withOpacity(0.7),
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: AppSizes.s15),
        BookRating(
          rating: bookVolume.averageRating.toString(),
          ratingCount: bookVolume.ratingsCount.toString(),
        ),
      ],
    );
  }
}
