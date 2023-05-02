import 'package:bookly/presentation/home/views/widgets/home/play_widget.dart';

import 'package:bookly/presentation/resources/assets.dart';

import 'package:flutter/material.dart';

class FeatureBookItem extends StatelessWidget {
  const FeatureBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        fit: StackFit.loose,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsImagePath.testImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          PlayWidget(press: () {}),
        ],
      ),
    );
  }
}
