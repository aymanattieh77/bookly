import 'package:bookly/app/app.dart';

import 'package:flutter/material.dart';
import 'app/service_locator.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupAppService();

  runApp(Phoenix(child: const BooklyApp()));
}
