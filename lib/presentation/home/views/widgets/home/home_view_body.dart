import 'package:bookly/presentation/home/views/widgets/home/best_seller_listview_item.dart';
import 'package:bookly/presentation/home/views/widgets/home/custom_appbar.dart';

import 'package:bookly/presentation/home/views/widgets/home/feature_books_listView.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';

import 'package:bookly/presentation/resources/values.dart';

import 'package:flutter/material.dart';

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
          const FeatureBooksListView(),
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
