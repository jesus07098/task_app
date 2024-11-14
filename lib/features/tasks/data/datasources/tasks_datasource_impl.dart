import 'package:isar/isar.dart';
import 'package:task_app/core/config/plugins/isar_plugin.dart';
import 'package:task_app/core/utils/resources/data_state.dart';

import 'package:task_app/features/tasks/data/DTOs/task_dto.dart';

import 'package:task_app/features/tasks/domain/entities/task.dart';

import '../../domain/datasources/tasks_datasource.dart';

class TasksDatasourceImpl implements TasksDatasource {
  @override
  Future<DataState> createTask(TaskDto task) async {
    try {
      final result = await IsarPlugin.instance.writeTxn(() async {
        await IsarPlugin.instance.tasks.put(Task(title: 'prueba', description: 'desc',  isCompleted: true));
      });
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
  Future<DataState<List<Task>>> getTasks() async {
    try {
      final result = await IsarPlugin.instance.tasks.where().findAll();
      return DataSuccess(result);
    } catch (e) {
      return DataFailed(e.toString());
    }
  }
}
