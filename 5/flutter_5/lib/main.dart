import 'package:flutter/material.dart';
import 'package:flutter_5/PersonAdapter.dart';
import 'counter.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'Person.dart';
import 'PersonAdapter.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

var box;
var startcode = "";
var code = "";
SharedPreferences? _prefs;

void main() async {
  var path = Directory.current.path;
  Hive
    ..init(path)
    ..registerAdapter(PersonAdapter());
  _prefs = await SharedPreferences.getInstance();
  startcode = _prefs!.getString('CODE').toString();
  var person = Person(
    name: 'Dave',
    surname: 'Blood',
    middlename: 'Great',
    dates: DateTime.now(),
    theme: const TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  );
  List<Person> persons = <Person>[person];

  box = await Hive.openBox('Box0');
  await box!.put('list', persons);

  runApp(const StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: Padding(
            padding: EdgeInsets.only(top: 45, right: 10, left: 10),
            child: Container(
              child: Column(
                children: [
                  TextField(
                    onChanged: (text) {
                      code = text;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.code),
                      hintText: "Введите код",
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        print(startcode);
                        if (startcode == code || startcode == 'null') {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => MainApp()),
                              (route) => false);
                        }
                      },
                      child: const Text("Go")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      lazy: true,
      create: (_) => Counter(),
      child: const MaterialApp(home: FirstApp()),
    );
  }
}

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstApp();
}

class _FirstApp extends State<FirstApp> {
  List<Person> users = box!.get('list');

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
                              child: Text(users[index].toString())),
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
            Row(
              children: [
                IconButton(
                    onPressed: () async {
                      setState(() {
                        var person = Person(
                          name: 'gleb',
                          surname: users.length.toString(),
                          middlename: 'Great',
                          dates: DateTime.now(),
                          theme: const TextTheme(
                            headline1: TextStyle(
                                fontSize: 50.0, fontWeight: FontWeight.bold),
                            headline6: TextStyle(
                                fontSize: 30.0, fontStyle: FontStyle.italic),
                            bodyText2:
                                TextStyle(fontSize: 18.0, fontFamily: 'Hind'),
                          ),
                        );
                        users.add(person);
                      });
                      await box!.put('list', users);
                    },
                    icon: const Icon(Icons.add_circle_outline)),
                IconButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingApp())),
                    icon: Icon(Icons.settings))
              ],
            )
          ]),
        ),
      ),
    );
  }
}

class SecondApp extends StatelessWidget {
  const SecondApp({super.key, required this.some});

  final Person some;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 45, right: 10, left: 10),
          child: Container(
            child: Column(children: [
              Text(
                some.name,
                style: some.theme.headline1,
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

class FourApp extends StatelessWidget {
  const FourApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 45, right: 10, left: 10),
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
                  builder: (context, counter, child) => TextButton(
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
                  child: const Text("Back")),
            ]),
          ),
        ),
      ),
    );
  }
}

class SettingApp extends StatelessWidget {
  const SettingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 45, right: 10, left: 10),
          child: Container(
            child: Column(
              children: [
                TextField(
                  onChanged: (text) {
                    _prefs!.setString('CODE', text);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.code),
                    hintText: "Введите код",
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Save and exit")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
