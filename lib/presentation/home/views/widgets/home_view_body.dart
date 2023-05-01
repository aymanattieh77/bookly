import 'package:blur/blur.dart';
import 'package:bookly/presentation/home/views/widgets/best_seller_listview_item.dart';
import 'package:bookly/presentation/home/views/widgets/custom_appbar.dart';
import 'package:bookly/presentation/home/views/widgets/feature_listview_item.dart';
import 'package:bookly/presentation/resources/assets.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';

import 'package:bookly/presentation/resources/values.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: AppSizes.s30),
          Container(
            padding: const EdgeInsets.only(left: AppPadding.p22),
            height: 225,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const FeatureListViewItem();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: AppSizes.s5);
              },
            ),
          ),
          const SizedBox(height: AppSizes.s30),
          Padding(
            padding: const EdgeInsets.only(left: AppPadding.p30),
            child: Text(AppStrings.bestSeller, style: getRegularTextStyle()),
          ),
          const SizedBox(height: 15),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const BestSellerListViewItem();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 5);
            },
          )
        ],
      ),
    );
  }
}
