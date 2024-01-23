import 'package:flutter/material.dart';
import 'data.dart';

Globals glob = Globals();

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView.builder(
            itemCount: glob.GetLenghtWords(),
            itemBuilder: (context, index) {
              final item = glob.GetWordAtId(index);
              return ListTile(
                title: Text(item.GetName()),
              );
            },
          ),
        ),
      ),
    );
  }
}
