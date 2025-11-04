import 'package:my_task/models/task_model.dart';

class TaskManager {
  final List<TaskModel> tasks = [];

  void addTask(TaskModel task) {
    tasks.add(task);
  }

  void removeTask(TaskModel task) {
    tasks.remove(task);
  }

  void taskCompletion(TaskModel task, bool isCompleted) {
    task.isCompleted = isCompleted;
  }

  List<TaskModel> get allTasks => tasks;
}
