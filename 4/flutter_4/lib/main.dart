import 'package:flutter/material.dart';
import 'second.dart';
import 'counter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      lazy: true,
      create: (_) => Counter(),
      child: MaterialApp(home: FirstApp()),
    );
  }
}
