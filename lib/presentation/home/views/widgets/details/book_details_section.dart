import 'package:bookly/presentation/home/views/widgets/common/book_rating.dart';
import 'package:bookly/presentation/home/views/widgets/details/book_details_image.dart';
import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const BookDetailsImage(),
        const SizedBox(height: AppSizes.s20),
        const Text(
          'The Jungle Book',
          style: AppStyles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.s10),
        Text(
          'Rudyard Kipling',
          style: AppStyles.textStyle16.copyWith(
              color: ColorManager.white.withOpacity(0.7),
              fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: AppSizes.s15),
        // const BookRating(),
      ],
    );
  }
}
