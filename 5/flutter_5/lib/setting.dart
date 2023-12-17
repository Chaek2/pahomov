import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingApp extends StatelessWidget {
  SettingApp({super.key});

  void SetString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('key', 'great');
  }

  String GetString(String key) {
    final prefs = SharedPreferences.getInstance();
    return prefs.getString(key) as Future<String>;
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        children: [
          Text("SAVE"),
          TextButton(
            onPressed: () => SetString('key', 'KEY'),
            child: Text("Save"),
          ),
        ],
      ))),
    );
  }
}
