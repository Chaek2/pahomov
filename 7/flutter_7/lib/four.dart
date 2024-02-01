import 'package:flutter/material.dart';
import 'data.dart';
import 'word.dart';

Globals glob = Globals();

class FourApp extends StatefulWidget {
  const FourApp({super.key});

  @override
  State<FourApp> createState() => _FourApp();
}

int lenghtword = 0;
Word ranword = Word("Случайно", "Случайно");

class _FourApp extends State<FourApp> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    TextButton(
      onPressed: () {},
      child: Text(
        ranword.GetName(),
      ),
    ),
    TextButton(
      onPressed: () {},
      child: Text(
        ranword.GetValue(),
      ),
    ),
    TextButton(
      onPressed: () {},
      child: Text(
        lenghtword.toString(),
      ),
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _widgetOptions = <Widget>[
      TextButton(
        onPressed: () {},
        child: Text(
          ranword.GetName(),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          ranword.GetValue(),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          lenghtword.toString(),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Словарь")),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.amber),
                child: Text("Список функций"),
              ),
              ListTile(
                title: const Text('Случайное слово'),
                selected: _selectedIndex == 0,
                onTap: () {
                  _onItemTapped(0);
                  ranword = glob.GetRandomWord();
                },
              ),
              ListTile(
                title: const Text('Случайное значение'),
                selected: _selectedIndex == 1,
                onTap: () {
                  _onItemTapped(1);
                  ranword = glob.GetRandomWord();
                },
              ),
              ListTile(
                title: const Text('Количество слов слов'),
                selected: _selectedIndex == 2,
                onTap: () {
                  _onItemTapped(2);
                  lenghtword = glob.GetLenghtWords();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
