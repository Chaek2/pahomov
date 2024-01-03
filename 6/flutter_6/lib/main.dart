import 'package:flutter/material.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'dart:io';
import 'PersonAdapter.dart';
import 'Person.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';

var box;
var setting_code = "";
var start_code = "";
int _cameraIndex = 0;
SharedPreferences? _prefs;

void main() async {
  _prefs = await SharedPreferences.getInstance();
  setting_code = _prefs!.getString('CODE').toString();
  var path = Directory.current.path;
  Hive
    ..init(path)
    ..registerAdapter(PersonAdapter());
  var person = Person(
    name: 'Dave',
    surname: 'Blood',
    path_img: '"C:\\Users\\Anton\\Pictures\\HSITDVE-H8I.jpg"',
    theme: const TextTheme(
      headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
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
                      start_code = text;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.code),
                      hintText: "Введите код",
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        print(setting_code);
                        if (setting_code == start_code ||
                            setting_code == 'null') {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => FirstApp()),
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

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstApp();
}

class _FirstApp extends State<FirstApp> {
  List<Person> users = box!.get('list');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 45, right: 10, left: 10),
          child: ButtonStyle(),
        ),
      ),
    );
  }
}

class AddPersonApp extends StatefulWidget {
  const AddPersonApp({super.key});

  @override
  State<AddPersonApp> createState() => _AddPersonApp();
}

class _AddPersonApp extends State<AddPersonApp> {
  @override
  Widget build(BuildContext context) {
    return CurrentLocationLayer(
      followOnLocationUpdate: FollowOnLocationUpdate.always,
      turnOnHeadingUpdate: TurnOnHeadingUpdate.never,
      style: LocationMarkerStyle(
        marker: const DefaultLocationMarker(
          child: Icon(
            Icons.navigation,
            color: Colors.white,
          ),
        ),
        markerSize: const Size(40, 40),
        markerDirection: MarkerDirection.heading,
      ),
    );
  }
}
