import 'package:flutter/material.dart';
import 'package:flutter_8/features/todo/presentation/controller/todo_controller.dart';
import 'package:flutter_8/features/todo/presentation/ui/home.dart';
import 'package:flutter_8/routes/app_router.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AppRouter.routee.routerDelegate,
      routeInformationProvider: AppRouter.routee.routeInformationProvider,
      routeInformationParser: AppRouter.routee.routeInformationParser,
    );
  }
}
