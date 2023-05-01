import 'package:bookly/presentation/home/views/widgets/home/best_seller_books_listview.dart';
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
        children: const [
          CustomAppBar(),
          SizedBox(height: AppSizes.s30),
          FeatureBooksListView(),
          SizedBox(height: AppSizes.s50),
          Padding(
            padding: EdgeInsets.only(left: AppPadding.p30),
            child: Text(AppStrings.bestSeller, style: AppStyles.textStyle18),
          ),
          SizedBox(height: AppSizes.s20),
          BestSellerBooksListView()
        ],
      ),
    );
  }
}
