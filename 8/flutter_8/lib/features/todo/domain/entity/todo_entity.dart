class TodoEntity {
  final String title;
  final String description;
  bool isCheck;

  TodoEntity({
    required this.title,
    required this.description,
    this.isCheck = false,
  });
}
