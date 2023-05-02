// GoRouter configuration
import 'package:bookly/presentation/home/views/book_details_view.dart';
import 'package:bookly/presentation/home/views/home_view.dart';
import 'package:bookly/presentation/splash/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class Routers {
  static const String splash = '/';
  static const String home = '/home';
  static const String details = '/details';
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
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Routers.details,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
