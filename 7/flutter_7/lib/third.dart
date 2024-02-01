import 'package:flutter/material.dart';
import 'package:flutter_7/main.dart';
import 'package:flutter_7/word.dart';

class ThirdApp extends StatelessWidget {
  const ThirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Тревога'),
                    content: const Text('Враг на 11 часов!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text("AlertDialog"),
            ),
            TextButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Наверное это SnackBar.'),
                  backgroundColor: (Colors.black12),
                  action: SnackBarAction(
                    label: 'Убрать',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text("SnackBar"),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {
                      DateTime now = DateTime.now();
                      glob.AddWord(Word(now.timeZoneName, now.timeZoneName));
                    },
                    child: Text("timeZoneName"),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {
                      DateTime now = DateTime.now();
                      glob.AddWord(
                          Word("Day" + now.day.toString(), now.day.toString()));
                    },
                    child: Text("day"),
                  ),
                ),
                PopupMenuItem(
                  child: TextButton(
                    onPressed: () {
                      DateTime now = DateTime.now();
                      glob.AddWord(Word(
                          "Hour" + now.hour.toString(), now.hour.toString()));
                    },
                    child: Text("hour"),
                  ),
                ),
                //Есть onSelected но мне лень его использовать, если что-то не добавляется и я пришёл сюда, то ты косой, там кнопка
              ],
            )
          ],
          title: const Text('Словарь Игоря и Славы'),
        ),
        body: const Center(
          child: Text('Скоро обновление...'),
        ),
      ),
    );
  }
}
