import 'package:bookly/presentation/home/views/widgets/home/play_widget.dart';

import 'package:bookly/presentation/resources/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

class FeatureBookItem extends StatelessWidget {
  const FeatureBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        fit: StackFit.loose,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) => const CircularProgressIndicator(),
          ),
          PlayWidget(press: () {}),
        ],
      ),
    );
  }
}
