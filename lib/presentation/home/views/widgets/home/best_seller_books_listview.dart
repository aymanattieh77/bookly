import 'package:bookly/app/routers.dart';
import 'package:bookly/data/mappers/mappers.dart';
import 'package:bookly/data/responses/book_model/book_item.dart';

import 'package:bookly/presentation/home/viewmodel/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/presentation/home/views/widgets/home/best_seller_book_item.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:bookly/presentation/state_renderer/custom_best_seller_books_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: _bestSellerBooksListView(state.items),
          );
        } else if (state is NewestBooksFailure) {
          return Container(
            color: Colors.red,
            child: Text(state.message),
          );
        } else if (state is NewestBooksLoading) {
          return const CustomBestSellerBooksLoading();
        } else {
          return Container(
            color: Colors.yellow,
            height: 20,
          );
        }
      },
    );
  }
}

Widget _bestSellerBooksListView(List<BookItem> items) {
  return ListView.builder(
    padding: const EdgeInsets.only(bottom: AppPadding.p20),
    physics: const NeverScrollableScrollPhysics(),
    itemCount: items.length,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          GoRouter.of(context)
              .push(Routers.details, extra: items[index].toDomain());
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: AppPadding.p5),
          child: BestSellerBookItem(bookVolume: items[index].toDomain()),
        ),
      );
    },
  );
}
