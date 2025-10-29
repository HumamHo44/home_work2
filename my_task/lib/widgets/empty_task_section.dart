import 'package:flutter/material.dart';

class EmptyTaskSection extends StatelessWidget {
  const EmptyTaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 350),
          Icon(Icons.add_task, color: Color(0xFFA9CECC), size: 120),
          Text(
            'No tasks yet',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Color(0xFF626866),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Add a task to get started',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xFF9EA4A2),
            ),
          ),
        ],
      ),
    );
  }
}
