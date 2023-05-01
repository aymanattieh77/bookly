import 'package:bookly/presentation/resources/colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const titleSmall = TextStyle(
    fontSize: 18.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );
  static const titleMedium = TextStyle(
    fontSize: 20.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );
  static const titleLarge = TextStyle(
    fontSize: 30.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
  static const subTitleSmall = TextStyle(
    fontSize: 14.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w300,
  );

  static const button = TextStyle(
    fontSize: 16.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static const bodyMedium = TextStyle(
    fontSize: 18.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color: ColorManager.grey,
  );
  static const bodySmall = TextStyle(
    fontSize: 14.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w300,
    color: ColorManager.grey,
  );
}
