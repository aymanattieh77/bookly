import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class BookPriceAndPreview extends StatelessWidget {
  const BookPriceAndPreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.white,
                minimumSize: const Size.fromHeight(AppSizes.s40),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
              ),
              onPressed: () {},
              child: Text(
                '19.99€',
                style: AppStyles.button.copyWith(color: ColorManager.black),
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.orange,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                minimumSize: const Size.fromHeight(AppSizes.s40),
              ),
              child: const Text(AppStrings.freePreview),
            ),
          ),
        ],
      ),
    );
  }
}
