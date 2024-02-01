import 'package:flutter/material.dart';
import 'second.dart';
import 'third.dart';
import 'four.dart';
import 'data.dart';

Globals glob = Globals();
void main() {
  glob.AddRandomWord();
  glob.GetWordOrder();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    SecondApp(),
    ThirdApp(),
    FourApp(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.telegram),
              label: 'Список',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tab),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face),
              label: 'Случайность',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
