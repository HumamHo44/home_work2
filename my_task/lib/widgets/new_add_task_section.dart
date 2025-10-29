import 'package:flutter/material.dart';
import 'package:my_task/models/task_model.dart';

class NewAddTaskSection extends StatelessWidget {
  const NewAddTaskSection({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onRemove,
  });

  final TaskModel task;
  final void Function(TaskModel task) onToggle;
  final void Function(TaskModel task) onRemove;
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
              value: task.isCompleted,
              onChanged: (value) {
                onToggle(task);
              },
            ),
          ),
          title: Text(
            task.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: task.isCompleted ? Colors.grey : Colors.black,
              decoration: task.isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          subtitle: Text(
            'Created: ${task.createdAt.day}/${task.createdAt.month}/${task.createdAt.year}',
            style: const TextStyle(color: Color(0xFF757B79), fontSize: 13),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete_outline,
              color: Color(0xFFE57373),
              size: 28,
            ),
            onPressed: () {
              onRemove(task);
            },
          ),
        ),
      ),
    );
  }
}
