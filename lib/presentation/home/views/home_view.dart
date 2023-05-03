import 'package:bookly/app/service_locator.dart';
import 'package:bookly/presentation/home/viewmodel/feature_books_cubit/feature_books_cubit_cubit.dart';

import 'package:bookly/presentation/home/views/widgets/home/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repository/repository.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FeatureBooksCubitCubit>(
      create: (context) => FeatureBooksCubitCubit(getIt<Repository>()),
      child: const Scaffold(
        body: SafeArea(
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
