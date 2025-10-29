import 'package:flutter/material.dart';
import 'package:my_task/models/task_manager.dart';
import 'package:my_task/models/task_model.dart';
import 'package:my_task/view/new_task.dart';
import 'package:my_task/widgets/task_input_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TaskManager taskManager = TaskManager();
  final TextEditingController taskController = TextEditingController();

  void addTask() {
    setState(() {
      if (taskController.text.isNotEmpty) {
        taskManager.addTask(taskController.text);
      }
    });
    taskController.clear();
  }

  void taskCompletion(TaskModel task) {
    setState(() {
      taskManager.taskCompletion(task);
    });
  }

  void taskRemove(TaskModel task) {
    setState(() {
      taskManager.removeTask(task);
    });
  }

  @override
  void dispose() {
    taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: NewTask(
            tasks: taskManager.allTasks,
            onToggle: taskCompletion,
            onRemove: taskRemove,
          ),
        ),
        TaskInputSection(controller: taskController, onAddTask: addTask),
      ],
    );
  }
}
