import 'package:bookly/app/routers.dart';
import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSizes.s30, right: AppSizes.s30, top: AppPadding.p30),
      child: Row(
        children: [
          SizedBox(
            height: AppSizes.s15,
            width: AppSizes.s75,
            child: Image.asset(AssetsImagePath.logo),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Routers.search);
            },
            icon: SvgPicture.asset(
              AssetsIconsPath.search,
            ),
          ),
        ],
      ),
    );
  }
}
