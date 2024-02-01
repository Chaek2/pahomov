enum Pages {
  home,
  addTodo,
  todoFinished,
  settings,
  error,
}

extension AppPageExtention on Pages {
  String get ScreenPath {
    return switch (this) {
      Pages.home => '/',
      Pages.addTodo => 'add_todo',
      Pages.todoFinished => 'todo_finished',
      Pages.settings => 'settings',
      Pages.error => 'error',
    };
  }

  String get ScreenName {
    return switch (this) {
      Pages.home => 'HOME',
      Pages.addTodo => 'ADDTODO',
      Pages.todoFinished => 'TODOFINISHED',
      Pages.settings => 'SETTINGS',
      Pages.error => 'ERROR',
    };
  }
}
