import 'package:isar/isar.dart';

import 'package:task_app/core/config/plugins/isar_plugin.dart';
import 'package:task_app/core/utils/resources/data_state.dart';
import 'package:task_app/features/tasks/data/DTOs/task_dto.dart';

import '../../domain/datasources/tasks_datasource.dart';

class TasksDatasourceImpl implements TasksDatasource {
  @override
  Future<DataState<TaskDto>> createTask(TaskDto task) async {
    try {
      final result = await IsarPlugin.instance.writeTxn(() async {
        await IsarPlugin.instance.taskDtos.put(task);
      });
      return DataSuccess(result);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }

  @override
  Future<void> deleteTaskById(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<TaskDto>> getTasks() async {
    List<TaskDto> tasks = await IsarPlugin.instance.taskDtos.where().findAll();
    return tasks;
  }
}
