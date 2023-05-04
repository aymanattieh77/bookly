import 'package:bookly/app/app.dart';

import 'package:flutter/material.dart';
import 'app/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupAppService();

  runApp(const BooklyApp());
}
