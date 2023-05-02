import 'package:bookly/presentation/home/views/widgets/home/feature_book_item.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: AppPadding.p30),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p2),
            child: FeatureBookItem(),
          );
        },
      ),
    );
  }
}
