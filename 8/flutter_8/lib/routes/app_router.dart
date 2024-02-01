import 'package:flutter_8/dj/service.dart';
import 'package:flutter_8/features/todo/presentation/controller/todo_controller.dart';
import 'package:flutter_8/features/todo/presentation/ui/add_todo.dart';
import 'package:flutter_8/features/todo/presentation/ui/home.dart';
import 'package:flutter_8/routes/router_utilis.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AppRouter {
  static GoRouter get routee => _router;

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Pages.home.ScreenPath,
        name: Pages.home.ScreenName,
        builder: (context, state) => ChangeNotifierProvider(
          create: (context) => service<TodoController>()..init(),
          child: const Home(),
        ),
        routes: [
          GoRoute(
            path: Pages.addTodo.ScreenPath,
            name: Pages.addTodo.ScreenName,
            builder: (context, state) => ChangeNotifierProvider.value(
              value: service<TodoController>(),
              child: AddTodo(),
            ),
          ),
        ],
      ),
    ],
  );
}
