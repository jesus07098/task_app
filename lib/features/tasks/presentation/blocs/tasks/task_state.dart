part of 'task_bloc.dart';

enum DataStatus { initial, empty, loading, completed, error }

class TaskState extends Equatable {
  final List<Task> tasks;
  final TitleTask title;
  final String description;
  final bool isCompleted;
  final bool isFormPosted;
  final String message;
  final bool isValid;
  final FormzSubmissionStatus formStatus;

  const TaskState({
    this.tasks = const [],
    this.formStatus = FormzSubmissionStatus.initial,
    this.isFormPosted = false,
    this.isCompleted = false,
    this.message = '',
    this.description = '',
    this.title = const TitleTask.pure(),
    this.isValid = false,
  });

  TaskState copyWith(
      {final FormzSubmissionStatus? formStatus,
      final List<Task>? tasks,
      final TitleTask? title,
      final String? description,
      final bool? isCompleted,
      final bool? isFormPosted,
      final bool? isValid,
      final String? message}) {
    return TaskState(
        message: message ?? this.message,
        formStatus: formStatus ?? this.formStatus,
        isFormPosted: isFormPosted ?? this.isFormPosted,
        isCompleted: isCompleted ?? this.isCompleted,
        tasks: tasks ?? this.tasks,
        title: title ?? this.title,
        isValid: isValid ?? this.isValid,
        description: description ?? this.description);
  }

  bool get allFieldValid => title.isValid;

  @override
  List<Object?> get props => [
        title,
        tasks,
        description,
        isValid,
        isCompleted,
        isFormPosted,
        formStatus,
        message
      ];
}
