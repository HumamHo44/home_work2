class TaskModel {
  final String id;
  final String title;
  bool isCompleted;
  final DateTime createdAt;

  TaskModel({
    required this.id,
    required this.createdAt,
    required this.title,
    this.isCompleted = false,
  });
  void toggleCompletion() {
    isCompleted = !isCompleted;
  }
}
