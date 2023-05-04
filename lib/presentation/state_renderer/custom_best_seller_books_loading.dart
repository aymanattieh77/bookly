import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CustomBestSellerBooksLoading extends StatelessWidget {
  const CustomBestSellerBooksLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: AppPadding.p20),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: AppPadding.p5),
          child: SkeletonItem(
            child: Row(
              children: [
                _imageLoading(),
                const SizedBox(width: AppSizes.s30),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _titleAndsubtitleLoading(),
                      _priceAndRatingLoading(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Row _priceAndRatingLoading() {
    return Row(
      children: [
        SkeletonLine(
          style: SkeletonLineStyle(
            height: 10,
            width: 64,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const Spacer(),
        SkeletonLine(
          style: SkeletonLineStyle(
            height: 10,
            width: 64,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }

  SkeletonParagraph _titleAndsubtitleLoading() {
    return SkeletonParagraph(
      style: const SkeletonParagraphStyle(
          lines: 3,
          spacing: 6,
          lineStyle: SkeletonLineStyle(randomLength: true)),
    );
  }

  SizedBox _imageLoading() {
    return const SizedBox(
      height: AppSizes.s100,
      child: AspectRatio(
        aspectRatio: 3 / 4,
        child: SkeletonAvatar(
          style: SkeletonAvatarStyle(),
        ),
      ),
    );
  }
}
