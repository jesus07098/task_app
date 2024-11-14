part of 'task_bloc.dart';

sealed class TaskEvent {}

class OnGetTask extends TaskEvent {}

class OnCreateTask extends TaskEvent {}

class OnTitleChange extends TaskEvent {
  final String title;
  OnTitleChange(this.title);
}
