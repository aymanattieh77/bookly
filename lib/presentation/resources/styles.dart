import 'package:bookly/presentation/resources/colors.dart';
import 'package:flutter/material.dart';

TextStyle getRegularTextStyle() {
  return const TextStyle(
      fontSize: 18.0, fontFamily: 'Inter', fontWeight: FontWeight.normal);
}

TextStyle getRegularTextStyle2() {
  return const TextStyle(
      fontSize: 20.0, fontFamily: 'Inter', fontWeight: FontWeight.normal);
}

TextStyle getRegularTextStyle3() {
  return const TextStyle(
      fontSize: 14.0,
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
      color: ColorManager.grey);
}
