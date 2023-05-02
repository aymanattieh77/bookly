import 'package:flutter/material.dart';

const kGtSectraFine = 'GT Sectra Fine';
const kInterFont = 'Inter';

abstract class AppStyles {
  static const titleSmall = TextStyle(
    fontSize: 18.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static const button = TextStyle(
    fontSize: 16.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: kInterFont,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: kInterFont,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: kInterFont,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: kInterFont,
  );
}
