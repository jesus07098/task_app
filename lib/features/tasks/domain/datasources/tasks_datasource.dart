import '../../../../core/utils/resources/data_state.dart';

import '../../data/DTOs/task_dto.dart';
abstract class TasksDatasource {
  Future<List<TaskDto>> getTasks();
  Future<DataState> createTask(TaskDto task);
  Future<void> deleteTaskById(String id);
}
