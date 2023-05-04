import 'package:bookly/domain/models/book_models/book_volume.dart';
import 'package:bookly/presentation/home/views/widgets/details/book_details_section.dart';
import 'package:bookly/presentation/home/views/widgets/details/book_price_preview_widget.dart';
import 'package:bookly/presentation/home/views/widgets/details/custom_book_details_appbar.dart';
import 'package:bookly/presentation/home/views/widgets/details/see_also_books_section.dart';

import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookVolume});
  final BookVolume bookVolume;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              const CustomBookDetailsAppbar(),
              const SizedBox(height: AppSizes.s10),
              BookDetailsSection(bookVolume: bookVolume),
              const SizedBox(height: AppSizes.s30),
              BookPriceAndPreview(bookVolume: bookVolume),
              const SizedBox(height: AppSizes.s20),
              const SeeAlsoBooksSection(),
              const SizedBox(height: AppSizes.s15),
            ],
          ),
        ),
      ],
    );
  }
}
