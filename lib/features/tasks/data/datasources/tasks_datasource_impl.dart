


import 'package:task_app/core/utils/resources/data_state.dart';

import 'package:task_app/features/tasks/data/DTOs/task_dto.dart';

import 'package:task_app/features/tasks/domain/entities/task.dart';

import '../../domain/datasources/tasks_datasource.dart';

class TasksDatasourceImpl implements TasksDatasource {
  @override
  Future<DataState> createTask(TaskDto task) {
    // TODO: implement createTask
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTaskById(String id) {
    // TODO: implement deleteTaskById
    throw UnimplementedError();
  }

  @override
  Future<DataState<Task>> getTask() {
    // TODO: implement getTask
    throw UnimplementedError();
  }
}