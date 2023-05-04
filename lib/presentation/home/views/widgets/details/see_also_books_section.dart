import 'package:bookly/presentation/home/views/widgets/common/custom_book_image.dart';
import 'package:bookly/presentation/resources/strings.dart';
import 'package:bookly/presentation/resources/styles.dart';
import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

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
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: AppPadding.p30),
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.5),
                  //todo   child: CustomBookImage(),
                  child: Text('dasdsdks'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
