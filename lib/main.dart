import 'package:eyes_of_rovers_tdd/injection_container.dart';
import 'package:flutter/material.dart';
import 'presentation/app.dart';

void main() {
  configureDependencies('dev');
  runApp(MyApp());
}
