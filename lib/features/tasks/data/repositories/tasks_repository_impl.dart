

import 'package:task_app/core/utils/resources/data_state.dart';

import 'package:task_app/features/tasks/data/DTOs/task_dto.dart';
import 'package:task_app/features/tasks/domain/datasources/tasks_datasource.dart';

import 'package:task_app/features/tasks/domain/entities/task.dart';

import '../../domain/repositories/tasks_repository.dart';

class TaskRepositoryImpl implements TasksRepository {
  final TasksDatasource _tasksLocalDataSource;
  TaskRepositoryImpl(this._tasksLocalDataSource);

  @override
  Future<DataState> createTask(TaskDto task) async{
      try {
      var result = await _tasksLocalDataSource.createTask(TaskDto(title: '', isCompleted:true));
      return DataSuccess(result);
    } catch (e) {
      return DataFailed(e.toString());
    }
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
