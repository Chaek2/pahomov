import 'package:flutter/material.dart';
import 'package:flutter_8/features/todo/presentation/controller/todo_controller.dart';
import 'package:provider/provider.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Checkbox(
          value: context.watch<TodoController>().getTodoList[index].isCheck,
          onChanged: (value) =>
              context.read<TodoController>().onChangedIsCheck(value!, index),
        ),
        title: Text(context.read<TodoController>().getTodoList[index].title),
      ),
    );
  }
}
