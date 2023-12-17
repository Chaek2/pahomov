import 'package:flutter/material.dart';
import 'third.dart';
import 'four.dart';

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstApp();
}

class _FirstApp extends State<FirstApp> {
  List<String> users = <String>["Tom", "Alice", "Bob", "Sam", "Kate"];

  void _updateMyItems(int old, int newIndex) {
    setState(() {
      if (newIndex > old) {
        newIndex -= 1;
      }
      var item = users.removeAt(old);
      users.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == '/four') {
          return MaterialPageRoute(builder: (context) => const FourApp());
        }
        return null;
      },
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 45, right: 10, left: 10),
          child: Column(children: [
            SizedBox(
              height: 700,
              width: 380.0,
              child: ReorderableListView(
                children: List.generate(
                  users.length,
                  (index) {
                    return Container(
                      key: ValueKey(users[index]),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                switch (users[index]) {
                                  case "2":
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondApp(some: users[index])));
                                    break;
                                  case "3":
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondApp(some: users[index])),
                                        (Route<dynamic> route) => false);
                                    break;
                                  case "4":
                                    Navigator.pushNamed(context, '/four');
                                    break;
                                  case _:
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondApp(some: users[index])));
                                    break;
                                }
                              },
                              child: Text(users[index])),
                          TextButton(
                              onPressed: () =>
                                  setState(() => users.removeAt(index)),
                              child: const Text("Delete")),
                        ],
                      ),
                    );
                  },
                ),
                onReorder: (int oldIndex, int newIndex) {
                  _updateMyItems(oldIndex, newIndex);
                },
              ),
            ),
            IconButton(
                onPressed: () =>
                    setState(() => users.add(users.length.toString())),
                icon: const Icon(Icons.add_circle_outline)),
          ]),
        ),
      ),
    );
  }
}
