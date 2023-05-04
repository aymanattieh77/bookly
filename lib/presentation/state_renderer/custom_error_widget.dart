import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.message, this.onPressed});
  final String message;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.s15),
            color: ColorManager.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(AssetsJsonPath.error),
            Text(
              AppStrings.somethingWrong,
              style: AppStyles.textStyle16.copyWith(color: Colors.red),
            ),
            const SizedBox(height: AppSizes.s10),
            Text(
              message,
              style: AppStyles.textStyle18.copyWith(color: ColorManager.black),
            ),
            const SizedBox(height: AppSizes.s10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorManager.primary),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(AppStrings.ok))
          ],
        ),
      ),
    );
  }
}

showErrorDialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (ctx) => CustomErrorWidget(
      message: message,
    ),
  );
}
