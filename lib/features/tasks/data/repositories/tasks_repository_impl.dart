import 'package:task_app/core/utils/resources/data_state.dart';

import 'package:task_app/features/tasks/data/DTOs/task_dto.dart';
import 'package:task_app/features/tasks/domain/datasources/tasks_datasource.dart';

import 'package:task_app/features/tasks/domain/entities/task.dart';

import '../../domain/repositories/tasks_repository.dart';

class TasksRepositoryImpl implements TasksRepository {
  final TasksDatasource _tasksLocalDataSource;
  TasksRepositoryImpl(this._tasksLocalDataSource);

  @override
  Future<void> deleteTaskById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<Task>>> getTasks() async {
    try {
      final List<TaskDto> result = await _tasksLocalDataSource.getTasks();

      final List<Task> tasks =
          result.map((taskDto) => taskDto.toTask()).toList();

      return DataSuccess(tasks);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<DataState<Task>> createTask(TaskDto task) async {
    try {
      final result = await _tasksLocalDataSource.createTask(task);

      return DataSuccess(result.data?.toTask());
    } catch (e) {
      return DataFailed(e.toString());
    }
  }
}


  // @override
  // Future<DataState> createTask(TaskDto task) async {
  //   throw UnimplementedError();
  // }