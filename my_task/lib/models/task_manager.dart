import 'package:my_task/models/task_model.dart';

class TaskManager {
  final List<TaskModel> tasks = [];

  void addTask(String title) {
    final taskNew = TaskModel(
      id: DateTime.now().year.toString(),
      title: title,
      createdAt: DateTime.now(),
    );
    tasks.add(taskNew);
  }

  void removeTask(TaskModel task) {
    tasks.remove(task);
  }

  void taskCompletion(TaskModel task) {
    task.toggleCompletion();
  }

  List<TaskModel> get allTasks => List.unmodifiable(tasks);
}
