import 'package:bookly/presentation/home/views/widgets/details/book_details_section.dart';
import 'package:bookly/presentation/home/views/widgets/details/book_price_preview_widget.dart';
import 'package:bookly/presentation/home/views/widgets/details/custom_book_details_appbar.dart';
import 'package:bookly/presentation/home/views/widgets/details/see_also_books_section.dart';

import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomBookDetailsAppbar(),
        SizedBox(height: AppSizes.s10),
        BookDetailsSection(),
        SizedBox(height: AppSizes.s30),
        BookPriceAndPreview(),
        SizedBox(height: AppSizes.s20),
        SeeAlsoBooksSection(),
        SizedBox(height: AppSizes.s15),
      ],
    );
  }
}
