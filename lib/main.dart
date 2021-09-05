import 'package:eyes_of_rovers_tdd/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'presentation/app.dart';

void main() async {
  configureDependencies('dev');
  await dotenv.load();
  runApp(MyApp());
}
