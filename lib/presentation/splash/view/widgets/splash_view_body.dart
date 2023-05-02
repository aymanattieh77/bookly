import 'dart:async';

import 'package:bookly/app/constants.dart';
import 'package:bookly/presentation/home/views/home_view.dart';
import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:bookly/presentation/splash/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsImagePath.logo),
          const SizedBox(height: AppSizes.s10),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: kAnimationDuration);
    animationController.forward();
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
  }

  @override
  void dispose() {
    animationController.stop();
    animationController.dispose();

    super.dispose();
  }

  void navigateToHomePage() {
    Future.delayed(
      kSplashViewDuration,
      () {
        Get.off(const HomeView());
      },
    );
  }
}
