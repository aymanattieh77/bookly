import 'dart:ui';

import 'package:bookly/presentation/home/views/widgets/custom_appbar.dart';
import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/values.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        const SizedBox(height: AppSizes.s75),
        Container(
          height: 225,
          width: 165,
          decoration: BoxDecoration(
            border: Border.all(color: ColorManager.darkGrey),
            image: const DecorationImage(
              image: AssetImage(AssetsImagePath.testImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(color: ColorManager.darkGrey),
              color: Colors.grey.withOpacity(0.4),
            ),
            child: IconButton(
                onPressed: () {}, icon: SvgPicture.asset(AssetsIconsPath.play)),
          ),
        ),
      ],
    );
  }
}
