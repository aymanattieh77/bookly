import 'package:bookly/app/functions.dart';

import 'package:bookly/domain/models/book_models/book_volume.dart';
import 'package:bookly/presentation/components/custom_elevated_button.dart';
import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/strings.dart';

import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BookPriceAndPreview extends StatelessWidget {
  const BookPriceAndPreview({
    super.key,
    required this.bookVolume,
  });
  final BookVolume bookVolume;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p38),
      child: Row(
        children: [
          Expanded(
            child: CustomElevatedButton(
              backgroundColor: ColorManager.white,
              label: getPrice(),
              labelColor: ColorManager.black,
              press: () {},
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 8),
                  blurRadius: 12.0,
                  color: ColorManager.indigo.withOpacity(0.1725),
                ),
              ]),
              child: CustomElevatedButton(
                isLeftButton: false,
                backgroundColor: ColorManager.orange,
                label: AppStrings.freePreview,
                labelColor: ColorManager.white,
                press: () async {
                  await launchCustomUr(context, bookVolume.url);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getPrice() {
    if (bookVolume.price == 0.0) {
      return 'Free';
    } else {
      return '${bookVolume.price}€';
    }
  }
}
