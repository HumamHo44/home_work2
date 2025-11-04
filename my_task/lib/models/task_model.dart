import 'package:equatable/equatable.dart';

class TaskModel extends Equatable {
  final String title;
  final DateTime date;
  bool isCompleted;

  TaskModel({
    required this.date,
    required this.title,
    this.isCompleted = false,
  });

  @override
  List<Object?> get props => [title];

  set taskCompletion(bool taskCompletion) {}
}
