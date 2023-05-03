import 'package:bookly/presentation/home/views/widgets/home/best_seller_books_listview.dart';
import 'package:bookly/presentation/home/views/widgets/home/custom_appbar.dart';

import 'package:bookly/presentation/home/views/widgets/home/feature_books_listView.dart';
import 'package:bookly/presentation/resources/colors.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';

import 'package:bookly/presentation/resources/values.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar.medium(
          backgroundColor: ColorManager.primary,
          flexibleSpace: const CustomAppBar(),
          elevation: 0,
          pinned: true,
          expandedHeight: 0,
          toolbarHeight: 0,
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSizes.s20),
              const FeatureBooksListView(),
              const SizedBox(height: AppSizes.s50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
                child: Row(
                  children: [
                    const Text(AppStrings.bestSeller,
                        style: AppStyles.textStyle18),
                    const Spacer(),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.filter))
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.s20),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding:
                EdgeInsets.only(left: AppPadding.p30, right: AppPadding.p10),
            child: BestSellerBooksListView(),
          ),
        ),
      ],
    );
  }
}
