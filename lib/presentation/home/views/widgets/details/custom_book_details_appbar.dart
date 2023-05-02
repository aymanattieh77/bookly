import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSizes.s30, right: AppSizes.s30, top: AppPadding.p30),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: SvgPicture.asset(
              AssetsIconsPath.close,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetsIconsPath.cart,
            ),
          ),
        ],
      ),
    );
  }
}
