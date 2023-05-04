import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CustomFeatureBooksLoading extends StatelessWidget {
  const CustomFeatureBooksLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: AppPadding.p30),
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const AspectRatio(
          aspectRatio: 3 / 4,
          child: SkeletonAvatar(
            style: SkeletonAvatarStyle(
                shape: BoxShape.rectangle,
                padding: EdgeInsets.all(AppPadding.p5)),
          ),
        ),
      ),
    );
  }
}
