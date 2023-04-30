import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p20),
        child: Image.asset(AssetsImagePath.logo, fit: BoxFit.cover),
      ),
    );
  }
}
