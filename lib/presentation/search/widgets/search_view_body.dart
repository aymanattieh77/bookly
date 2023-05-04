import 'package:bookly/presentation/home/views/widgets/common/custom_book_image.dart';
import 'package:bookly/presentation/home/views/widgets/home/best_seller_book_item.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:bookly/presentation/search/view/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
          const SizedBox(height: AppSizes.s15),
          const CustomSearchTextField(),
          const SizedBox(height: AppSizes.s15),
          const Text(
            'Search Result',
            style: AppStyles.textStyle18,
          ),
          const SizedBox(height: AppSizes.s15),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: AppPadding.p5),
          // child: BookListViewItem(),
          child: Container(),
        );
      },
    );
  }
}
