import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:flutter/material.dart';

final defaultTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: ColorManager.primary,
  textTheme: TextTheme(
    bodySmall: getRegularTextStyle(),
  ),
);
