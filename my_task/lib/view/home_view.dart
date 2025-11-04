import 'package:flutter/material.dart';
import 'package:my_task/models/task_manager.dart';
import 'package:my_task/view/new_task.dart';
import 'package:my_task/widgets/empty_task_section.dart';
import 'package:my_task/widgets/task_input_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TaskManager taskManager = TaskManager();
  void onChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: taskManager.tasks.isEmpty
              ? EmptyTaskSection()
              : NewTaskList(
                  taskManager: taskManager,
                  onAllTasksDeleted: onChanged,
                ),
        ),
        TaskInputSection(taskManager: taskManager, onChange: onChanged),
      ],
    );
  }
}
