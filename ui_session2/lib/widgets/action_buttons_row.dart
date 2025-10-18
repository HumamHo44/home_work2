// lib/presentation/widgets/action_buttons_row.dart
import 'package:flutter/material.dart';
import 'package:ui_session2/widgets/custom_action_button.dart';

class ActionButtonsRow extends StatelessWidget {
  const ActionButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        children: const [
          Expanded(
            child: CustomActionButton(title: 'Settings', color: Colors.blue),
          ),
          SizedBox(width: 16),
          Expanded(
            child: CustomActionButton(title: 'Profile', color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
