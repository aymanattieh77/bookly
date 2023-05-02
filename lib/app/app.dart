import 'package:bookly/app/routers.dart';
import 'package:bookly/presentation/resources/themes.dart';
import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      routerConfig: AppRouter.router,
    );
  }
}
