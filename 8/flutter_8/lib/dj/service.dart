import 'package:flutter_8/features/todo/presentation/controller/todo_controller.dart';
import 'package:get_it/get_it.dart';

final service = GetIt.instance;

Future<void> init() async {
  service.registerLazySingleton(() => TodoController());
}
