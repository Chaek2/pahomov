import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Person {
  Person(
      {required this.name,
      required this.surname,
      required this.path_img,
      required this.theme});

  @HiveField(0)
  String name;

  @HiveField(1)
  String surname;

  @HiveField(2)
  String path_img;

  @HiveField(3)
  TextTheme theme;

  @override
  String toString() {
    return '$surname $name';
  }
}