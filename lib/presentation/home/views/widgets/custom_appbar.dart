import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.s30,
        vertical: AppSizes.s40,
      ),
      child: Row(
        children: [
          SizedBox(
            height: AppSizes.s15,
            width: AppSizes.s75,
            child: Image.asset(AssetsImagePath.logo),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AssetsIconsPath.search,
            ),
          ),
        ],
      ),
    );
  }
}
