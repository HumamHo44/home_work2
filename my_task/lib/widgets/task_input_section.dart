import 'package:flutter/material.dart';
import 'package:my_task/models/task_manager.dart';
import 'package:my_task/models/task_model.dart';

class TaskInputSection extends StatefulWidget {
  const TaskInputSection({
    super.key,
    required this.taskManager,
    required this.onChange,
  });

  final TaskManager taskManager;
  final VoidCallback onChange;

  @override
  State<TaskInputSection> createState() => _TaskInputSectionState();
}

class _TaskInputSectionState extends State<TaskInputSection> {
  String taskTitle = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFEEF4F2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 24),
                      border: InputBorder.none,
                      hintText: 'Add a new task...',
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onChanged: (value) {
                      taskTitle = value;
                    },
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFDEE4E2),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    TaskModel task = TaskModel(
                      title: taskTitle,
                      date: DateTime.now(),
                    );
                    widget.taskManager.addTask(task);
                    widget.onChange();
                  },
                  icon: Icon(Icons.add, size: 30),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
