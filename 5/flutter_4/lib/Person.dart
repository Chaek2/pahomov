import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Person {
  Person(
      {required this.name,
      required this.surname,
      required this.middlename,
      required this.dates,
      required this.theme});

  @HiveField(0)
  String name;
  @HiveField(1)
  String surname;
  @HiveField(2)
  String middlename;

  @HiveField(3)
  DateTime dates;

  @HiveField(4)
  TextTheme theme;

  @override
  String toString() {
    return '$surname $name $middlename';
  }
}
