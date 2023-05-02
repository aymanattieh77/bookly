import 'package:bookly/app/app.dart';
import 'package:bookly/data/network/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dio = Dio();
  final response = await APIService(dio).getBooksItems('computer science');
  print(response.items![0].volumeInfo!.title);
  runApp(const BooklyApp());
}
