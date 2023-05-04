import 'package:bookly/data/mappers/mappers.dart';
import 'package:bookly/data/responses/book_model/book_item.dart';
import 'package:bookly/presentation/home/viewmodel/similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly/presentation/home/views/widgets/common/custom_book_image.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAlsoBooksSection extends StatelessWidget {
  const SeeAlsoBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.centerStart,
            padding: const EdgeInsets.only(left: AppPadding.p30),
            child: const Text(
              AppStrings.youCanAlsoLike,
              style: AppStyles.textStyle14,
            ),
          ),
          const SizedBox(height: AppSizes.s10),
          BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
            builder: (context, state) {
              if (state is SimilerBooksSuccess) {
                return Expanded(child: seeAlsoBooksListView(state.items));
              } else if (state is SimilerBooksFailure) {
                return Text(state.message);
              } else if (state is SimilerBooksLoading) {
                return const CircularProgressIndicator();
              } else {
                return Container(
                  height: 20,
                  color: Colors.yellowAccent,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

Widget seeAlsoBooksListView(List<BookItem> items) {
  return ListView.builder(
    physics: const BouncingScrollPhysics(),
    padding: const EdgeInsets.only(left: AppPadding.p30),
    scrollDirection: Axis.horizontal,
    itemCount: items.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.5),
        child: CustomBookImage(imageUrl: items[index].toDomain().imageUrl),
      );
    },
  );
}
