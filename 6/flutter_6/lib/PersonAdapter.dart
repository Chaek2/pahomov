import 'package:flutter/material.dart';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'Person.dart';

class PersonAdapter extends TypeAdapter<Person> {
  @override
  Person read(BinaryReader reader) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  // TODO: implement typeId
  int get typeId =>  0;

  @override
  void write(BinaryWriter writer, Person obj) {
    // TODO: implement write
  }
}
