import 'package:flutter/material.dart';
import 'package:my_task/models/task_manager.dart';
import 'package:my_task/models/task_model.dart';

class NewAddTaskSection extends StatefulWidget {
  const NewAddTaskSection({
    super.key,
    required this.task,
    required this.taskManager,
    required this.onDelete,
  });

  final TaskModel task;
  final TaskManager taskManager;
  final VoidCallback onDelete;

  @override
  State<NewAddTaskSection> createState() => _NewAddTaskSectionState();
}

class _NewAddTaskSectionState extends State<NewAddTaskSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.15),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          leading: Transform.scale(
            scale: 1.2,
            child: Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              activeColor: Colors.teal,
              checkColor: Colors.white,
              value: widget.task.isCompleted,
              onChanged: (value) {
                widget.taskManager.taskCompletion(widget.task, value ?? false);
                setState(() {});
              },
            ),
          ),
          title: Text(
            widget.task.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: widget.task.isCompleted ? Colors.grey : Colors.black,
              decoration: widget.task.isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          subtitle: Text(
            'Created: ${widget.task.date.day}/${widget.task.date.month}/${widget.task.date.year}',
            style: const TextStyle(color: Color(0xFF757B79), fontSize: 13),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete_outline,
              color: Color(0xFFE57373),
              size: 28,
            ),
            onPressed: () {
              widget.taskManager.removeTask(widget.task);
              widget.onDelete();
            },
          ),
        ),
      ),
    );
  }
}
