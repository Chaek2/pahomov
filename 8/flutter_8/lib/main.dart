import 'package:flutter/material.dart';
import 'package:flutter_8/dj/service.dart';
import 'package:flutter_8/features/app.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const App());
}
