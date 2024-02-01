import 'package:flutter/material.dart';
import 'package:flutter_8/features/todo/presentation/controller/todo_controller.dart';
import 'package:flutter_8/routes/app_router.dart';
import 'package:provider/provider.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});

  final _keyform = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Добавление записи"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!_keyform.currentState!.validate()) return;
          context.read<TodoController>().addtodo(_name.text, _description.text);
          AppRouter.routee.pop();
        },
        child: const Icon(
          Icons.save,
        ),
      ),
      body: Form(
        key: _keyform,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Поле пустое';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: _description,
                maxLines: 3,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Поле пустое';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
