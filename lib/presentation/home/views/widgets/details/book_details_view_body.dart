import 'package:bookly/presentation/home/views/widgets/common/book_rating.dart';
import 'package:bookly/presentation/home/views/widgets/details/book_details_image.dart';
import 'package:bookly/presentation/home/views/widgets/details/book_price_preview_widget.dart';
import 'package:bookly/presentation/home/views/widgets/details/custom_book_details_appbar.dart';
import 'package:bookly/presentation/home/views/widgets/details/see_also_books_section.dart';

import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppbar(),
        const SizedBox(height: AppPadding.p10),
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
        const BookRating(),
        const SizedBox(height: AppSizes.s30),
        const BookPriceAndPreview(),
        const SizedBox(height: AppSizes.s20),
        const SeeAlsoBooksSection(),
        const SizedBox(height: AppSizes.s15),
      ],
    );
  }
}
