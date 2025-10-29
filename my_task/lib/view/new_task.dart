import 'package:flutter/material.dart';
import 'package:my_task/models/task_model.dart';
import 'package:my_task/widgets/empty_task_section.dart';
import 'package:my_task/widgets/new_add_task_section.dart';

class NewTask extends StatelessWidget {
  const NewTask({
    super.key,
    required this.tasks,
    required this.onToggle,
    required this.onRemove,
  });
  final List<TaskModel> tasks;
  final void Function(TaskModel task) onToggle;
  final void Function(TaskModel task) onRemove;
  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return EmptyTaskSection();
    }
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return NewAddTaskSection(
          task: task,
          onToggle: onToggle,
          onRemove: onRemove,
        );
      },
    );
  }
}
