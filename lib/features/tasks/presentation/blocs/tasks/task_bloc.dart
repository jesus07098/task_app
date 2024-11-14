import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:task_app/core/utils/resources/use_case.dart';
import 'package:task_app/features/tasks/data/DTOs/task_dto.dart';
import 'package:task_app/features/tasks/domain/usecases/get_tasks_usecase.dart';

import '../../../domain/entities/task.dart';
import '../../../domain/usecases/create_task_usecase.dart';
import '../../inputs/title.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetTasksUseCase _getTasksUseCase;
  final CreateTaskUseCase _createTaskUseCase;

  TaskBloc(this._getTasksUseCase, this._createTaskUseCase)
      : super(const TaskState()) {
    on<OnGetTask>(_onGetTasks);
    on<OnCreateTask>(_onCreateTask);
    on<OnTitleChange>(_onTitleChange);
  }

  void _onTitleChange(
    OnTitleChange event,
    Emitter<TaskState> emit,
  ) {
    final title = TitleTask.dirty(event.title);
    emit(state.copyWith(
        title: title,
        isValid: Formz.validate([
          title,
        ])));
  }

  Future<void> _onGetTasks(OnGetTask event, Emitter<TaskState> emit) async {
    final tasks = await _getTasksUseCase(params: NoParams());
    emit(state.copyWith(tasks: tasks.data));
  }

  Future<void> _onCreateTask(event, Emitter<TaskState> emit) async {
    if (state.allFieldValid) {
      try {
        emit(state.copyWith(
            message: 'Nota creada!',
            isFormPosted: true,
            formStatus: FormzSubmissionStatus.initial));
        await _createTaskUseCase(
            params: TaskDto(
                title: state.title.value,
                isCompleted: state.isCompleted,
                description: state.description));
        emit(state.copyWith(
            message: 'Nota creada exitosamente!',
            isFormPosted: true,
            formStatus: FormzSubmissionStatus.success));
        _cleanFormFields(emit);
      } catch (e) {
        emit(state.copyWith(
            message: 'Error al crear la nota...',
            formStatus: FormzSubmissionStatus.failure));
      }
    }

    add(OnGetTask());
  }

  void _cleanFormFields(Emitter<TaskState> emit) {
    //Limpiar valores del form
    emit(state.copyWith(
        title: const TitleTask.pure(),
        description: '',
        formStatus: FormzSubmissionStatus.initial));
  }
}
