import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

import '../resources/styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      required this.backgroundColor,
      this.isLeftButton = true,
      this.press,
      required this.label,
      required this.labelColor});
  final Color backgroundColor;
  final bool isLeftButton;
  final Function()? press;
  final String label;
  final Color labelColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: const Size.fromHeight(AppSizes.s40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: isLeftButton
                ? const Radius.circular(AppSizes.s10)
                : Radius.zero,
            bottomRight: isLeftButton
                ? const Radius.circular(AppSizes.s10)
                : Radius.zero,
            bottomLeft: isLeftButton
                ? Radius.zero
                : const Radius.circular(AppSizes.s10),
            topRight: isLeftButton
                ? Radius.zero
                : const Radius.circular(AppSizes.s10),
          ),
        ),
      ),
      onPressed: press,
      child: Text(
        label,
        style: AppStyles.button.copyWith(color: labelColor),
      ),
    );
  }
}
