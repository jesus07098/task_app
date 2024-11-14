import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_app/core/utils/resources/use_case.dart';
import 'package:task_app/features/tasks/domain/usecases/get_tasks_usecase.dart';

import '../../../domain/entities/task.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTasksUseCase _getTasksUseCase;

  TaskBloc(this._getTasksUseCase) : super(const TaskState()) {
    on<OnGetTask>(_onGetTasks);
  }

  Future<void> _onGetTasks(OnGetTask event, Emitter<TaskState> emit) async {
    final tasks = await _getTasksUseCase(params: NoParams());
    emit(state.copyWith(tasks: tasks.data));
  }
}
