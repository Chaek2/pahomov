import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';

class FourApp extends StatelessWidget {
  const FourApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 45, right: 10, left: 10),
          child: Container(
            child: Column(children: [
              SizedBox(
                height: 100.0,
                width: 300.0,
                child: Consumer<Counter>(
                  builder: (context, counter, child) =>
                      Text(counter.getCounter),
                ),
              ),
              SizedBox(
                height: 100.0,
                width: 300.0,
                child: Consumer<Counter>(
                  builder: (context, counter, child) =>
                      TextButton(
                  onPressed: () {
                    counter.incrementCounter();
                  },
                  child: Text("+")),
                ),
              ),
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
