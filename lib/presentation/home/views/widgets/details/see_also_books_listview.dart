import 'package:bookly/presentation/home/views/widgets/common/custom_book_image.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class SeeAlsoBooksListView extends StatelessWidget {
  const SeeAlsoBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: AppPadding.p30),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.5),
              child: CustomBookImage(),
            );
          },
        ),
      ),
    );
  }
}
