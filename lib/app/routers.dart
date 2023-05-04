// GoRouter configuration
import 'package:bookly/app/service_locator.dart';
import 'package:bookly/domain/models/book_models/book_volume.dart';

import 'package:bookly/presentation/home/viewmodel/feature_books_cubit/feature_books_cubit_cubit.dart';
import 'package:bookly/presentation/home/viewmodel/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/presentation/home/views/book_details_view.dart';
import 'package:bookly/presentation/home/views/home_view.dart';
import 'package:bookly/presentation/search/view/search_view.dart';
import 'package:bookly/presentation/splash/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class Routers {
  static const String splash = '/';
  static const String home = '/home';
  static const String details = '/details';
  static const String search = '/search';
}

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routers.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Routers.home,
        builder: (context, state) {
          setupAppCubit();
          return _homeView();
        },
      ),
      GoRoute(
        path: Routers.details,
        builder: (context, state) =>
            BookDetailsView(bookVolumn: state.extra as BookVolume),
      ),
      GoRoute(
        path: Routers.search,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}

_homeView() {
  return MultiBlocProvider(
    providers: [
      BlocProvider(
          create: (context) =>
              getIt<FeatureBooksCubitCubit>()..fetchFeaturedBooks()),
      BlocProvider(
          create: (context) => getIt<NewestBooksCubit>()..fetchNewsetBooks()),
    ],
    child: const HomeView(),
  );
}
