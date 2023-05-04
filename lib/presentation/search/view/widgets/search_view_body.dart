import 'package:bookly/data/mappers/mappers.dart';
import 'package:bookly/data/responses/book_model/book_item.dart';

import 'package:bookly/presentation/home/views/widgets/home/best_seller_book_item.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:bookly/presentation/search/view/widgets/custom_search_text_field.dart';
import 'package:bookly/presentation/search/viewmodel/search_books_cubit/search_books_cubit.dart';
import 'package:bookly/presentation/state_renderer/custom_best_seller_books_loading.dart';
import 'package:bookly/presentation/state_renderer/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SearchBooksCubit>(context).fetchSearchBooks('Top Trending');
  }

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
          CustomSearchTextField(
            onChanged: (searchText) {
              BlocProvider.of<SearchBooksCubit>(context).fetchSearchBooks(
                  searchText.isEmpty ? 'Top Trending' : searchText);
            },
          ),
          const SizedBox(height: AppSizes.s15),
          const Text(
            AppStrings.searchResult,
            style: AppStyles.textStyle18,
          ),
          const SizedBox(height: AppSizes.s15),
          BlocBuilder<SearchBooksCubit, SearchBooksState>(
            builder: (context, state) {
              if (state is SearchBooksSuccess) {
                return SearchResultListView(items: state.items);
              } else if (state is SearchBooksLoading) {
                return const Expanded(child: CustomBestSellerBooksLoading());
              } else if (state is SearchBooksFailure) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  showErrorDialog(context, state.message);
                });
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.items});
  final List<BookItem> items;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: AppPadding.p5),
              child: BestSellerBookItem(bookVolume: items[index].toDomain()));
        },
      ),
    );
  }
}
