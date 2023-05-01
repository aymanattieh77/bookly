import 'package:bookly/presentation/home/views/widgets/custom_appbar.dart';

import 'package:bookly/presentation/resources/values.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: AppSizes.s10),
          CustomAppBar(),
        ],
      ),
    );
  }
}
