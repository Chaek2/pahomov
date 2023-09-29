import 'package:flutter/material.dart';
import 'package:flutter_2/second.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'first.dart';

Color me_color = Color.fromARGB(255, 235, 235, 235);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstApp());
  }
}
