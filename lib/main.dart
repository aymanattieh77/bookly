import 'package:bookly/app/app.dart';
import 'package:bookly/domain/repository/repository.dart';
import 'package:flutter/material.dart';
import 'app/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupAppService();

  final response = await getIt<Repository>().fetchBooks('batman');

  response
      .fold(
        (failure) => () {
          print('error${failure.message}');
        },
        (items) => () {
          print(items[0].id);
        },
      )
      .call();

  runApp(const BooklyApp());
}
