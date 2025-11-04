import 'package:flutter/material.dart';
import 'package:my_task/models/task_manager.dart';
import 'package:my_task/widgets/new_add_task_section.dart';

class NewTaskList extends StatefulWidget {
  const NewTaskList({
    super.key,
    required this.taskManager,
    required this.onAllTasksDeleted,
  });
  final TaskManager taskManager;
  final VoidCallback onAllTasksDeleted;

  @override
  State<NewTaskList> createState() => _NewTaskListState();
}

class _NewTaskListState extends State<NewTaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: widget.taskManager.tasks.length,
      itemBuilder: (context, index) {
        final task = widget.taskManager.tasks[index];
        return NewAddTaskSection(
          task: task,
          taskManager: widget.taskManager,
          onDelete: () {
            if (widget.taskManager.tasks.isEmpty) {
              widget.onAllTasksDeleted();
            } else {
              setState(() {});
            }
          },
        );
      },
    );
  }
}
