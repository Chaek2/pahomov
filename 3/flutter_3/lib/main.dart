// import 'dart:ffi';
import 'package:function_tree/function_tree.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  String result = "";
  String resultS = "";
  bool thers = false;

  void buttonClick(String text) {
    setState(() {
      switch (text) {
        case "C":
          result = "";
          resultS = "";
          thers = false;
        case "=":
          var rs = result.interpret();
          result = rs.toString();
          thers = true;
        case "10/2":
          if (thers) {
            double sd = double.parse(result);
            int si = int.parse(sd.round().toString());
            resultS = si.toRadixString(2);
            // print(s);
          }
        case "10/8":
          if (thers) {
            double sd = double.parse(result);
            int si = int.parse(sd.round().toString());
            resultS = si.toRadixString(8);
          }
        case "10/16":
          if (thers) {
            double sd = double.parse(result);
            int si = int.parse(sd.round().toString());
            resultS = si.toRadixString(16);
          }
        default:
          thers = false;
          result += text;
      }
    });
  }

  TextButton ButtonText(String text) {
    return TextButton(
      onPressed: () {
        buttonClick(text);
      },
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 45, right: 10, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(result),
                    ButtonText("="),
                    Text(resultS),
                  ],
                ),
                Row(
                  children: [
                    ButtonText("C"),
                    ButtonText("10/2"),
                    ButtonText("10/8"),
                    ButtonText("10/16"),
                  ],
                ),
                Row(
                  children: [
                    ButtonText("7"),
                    ButtonText("8"),
                    ButtonText("9"),
                    ButtonText("+"),
                  ],
                ),
                Row(
                  children: [
                    ButtonText("4"),
                    ButtonText("5"),
                    ButtonText("6"),
                    ButtonText("-"),
                  ],
                ),
                Row(
                  children: [
                    ButtonText("1"),
                    ButtonText("2"),
                    ButtonText("3"),
                    ButtonText("/"),
                  ],
                ),
                Row(
                  children: [
                    ButtonText("0"),
                    ButtonText("("),
                    ButtonText(")"),
                    ButtonText("*"),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
