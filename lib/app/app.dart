import 'package:bookly/presentation/resources/themes.dart';
import 'package:bookly/presentation/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: const SplashView(),
    );
  }
}
