import 'package:bookly/presentation/home/views/widgets/home/play_widget.dart';

import 'package:bookly/presentation/resources/assets.dart';

import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      fit: StackFit.loose,
      children: [
        Container(
          height: AppSizes.s225,
          width: AppSizes.s165,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsImagePath.testImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        PlayWidget(press: () {}),
      ],
    );
  }
}
