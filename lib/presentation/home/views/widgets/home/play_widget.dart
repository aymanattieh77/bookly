import 'package:bookly/presentation/components/blur.dart';
import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({
    super.key,
    required this.press,
  });
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppMargin.m10),
      height: AppSizes.s40,
      width: AppSizes.s40,
      child: Stack(
        alignment: AlignmentDirectional.center,
        fit: StackFit.loose,
        children: [
          Blur(
            borderRadius: BorderRadius.circular(AppSizes.s40),
            blurColor: ColorManager.white,
            blur: 3,
            colorOpacity: 0.101961,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(AppSizes.s40),
              ),
            ),
          ),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AssetsIconsPath.play)),
        ],
      ),
    );
  }
}
