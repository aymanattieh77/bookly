import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CustomSeeAlsoBooksLoading extends StatelessWidget {
  const CustomSeeAlsoBooksLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: AppPadding.p30),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.5),
            child: SizedBox(
              height: AppSizes.s100,
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: SkeletonAvatar(
                  style: SkeletonAvatarStyle(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
