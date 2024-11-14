part of 'task_bloc.dart';

enum DataStatus { initial, empty, loading, completed, error }

class TaskState extends Equatable {
  final List<Task> tasks;

  const TaskState({this.tasks = const []});

  TaskState copyWith({
    final List<Task>? tasks,
  }) {
    return TaskState(tasks: tasks ?? this.tasks);
  }

  @override
  List<Object?> get props => [tasks];
}
