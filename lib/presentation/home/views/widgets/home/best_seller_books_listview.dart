import 'package:bookly/app/routers.dart';
import 'package:bookly/presentation/home/views/widgets/home/best_seller_book_item.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            GoRouter.of(context).push(Routers.details);
          },
          child: const Padding(
            padding: EdgeInsets.only(bottom: AppPadding.p5),
            child: BestSellerBookItem(),
          ),
        );
      },
    );
  }
}
