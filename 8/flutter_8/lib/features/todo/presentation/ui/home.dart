import 'package:flutter/material.dart';
import 'package:flutter_8/features/todo/presentation/controller/todo_controller.dart';
import 'package:flutter_8/features/todo/presentation/widget/custom_app_bar.dart';
import 'package:flutter_8/features/todo/presentation/widget/todo_card.dart';
import 'package:flutter_8/routes/app_router.dart';
import 'package:flutter_8/routes/router_utilis.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRouter.routee.pushNamed(Pages.addTodo.ScreenName);
        },
      ),
      body: switch (context.select<TodoController, TodoState>(
        (value) => value.state,
      )) {
        TodoState.initial || TodoState.loading => const Center(
            child: CircularProgressIndicator(),
          ),
        TodoState.success => ListView.builder(
            itemCount: context.select<TodoController, int>(
                (value) => value.getTodoList.length),
            itemBuilder: (context, index) {
              return TodoCard(
                index: index,
              );
            },
          ),
        TodoState.error => const Center(
            child: Text("Ошибка"),
          )
      },
    );
  }
}
