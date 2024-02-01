import 'package:flutter/material.dart';
import 'package:flutter_8/features/todo/domain/entity/todo_entity.dart';

enum TodoState {
  initial,
  loading,
  success,
  error,
}

class TodoController with ChangeNotifier {
  List<TodoEntity> _todolist = [];
  List<TodoEntity> get getTodoList => _todolist;

  int _countUnfinished = 0;
  int get getCountUnfinished => _countUnfinished;

  TodoState state = TodoState.initial;

  void init() async {
    state = TodoState.loading;
    await Future.delayed(const Duration(seconds: 2));

    _todolist.add(
      TodoEntity(
        title: 'Название',
        description: 'Описание',
      ),
    );
    _countUnfinished = _todolist.where((element) => !element.isCheck).length;

    state = TodoState.success;
    notifyListeners();
  }

  void onChangedIsCheck(bool isCheck, int index) {
    _todolist[index].isCheck = isCheck;
    _countUnfinished = _todolist.where((element) => !element.isCheck).length;
    notifyListeners();
  }

  void addtodo(final String name, final String description) {
    _todolist.add(TodoEntity(title: name, description: description));
    _countUnfinished = _todolist.where((element) => !element.isCheck).length;
    notifyListeners();
  }
}
