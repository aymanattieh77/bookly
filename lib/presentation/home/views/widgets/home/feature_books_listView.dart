import 'package:bookly/data/mappers/mappers.dart';
import 'package:bookly/data/responses/book_model/book_item.dart';
import 'package:bookly/presentation/home/viewmodel/feature_books_cubit/feature_books_cubit_cubit.dart';
import 'package:bookly/presentation/home/views/widgets/home/feature_book_item.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubitCubit, FeatureBooksCubitState>(
      builder: (context, state) {
        if (state is FeatureBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: _featureBooksListView(state.items),
          );
        } else if (state is FeatureBooksCubitFailure) {
          return Container(
            color: Colors.red,
            child: Text(state.message),
          );
        } else if (state is FeatureBooksCubitLoading) {
          return const CircularProgressIndicator();
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

Widget _featureBooksListView(List<BookItem> items) {
  return ListView.builder(
    padding: const EdgeInsets.only(left: AppPadding.p30),
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    itemCount: items.length - 1,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p2),
        child: FeatureBookItem(imageUrl: items[index].toDomain().imageUrl),
      );
    },
  );
}
