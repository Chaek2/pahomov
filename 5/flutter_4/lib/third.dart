import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget {
  const SecondApp({super.key, required this.some});

  final String some;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 45, right: 10, left: 10),
          child: Container(
            child: Column(children: [
              Text(some),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back")),
            ]),
          ),
        ),
      ),
    );
  }
}
