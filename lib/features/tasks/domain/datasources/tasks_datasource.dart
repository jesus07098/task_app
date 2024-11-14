import '../../../../core/utils/resources/data_state.dart';

import '../../data/DTOs/task_dto.dart';

abstract class TasksDatasource {
  Future<List<TaskDto>> getTasks();
  Future<DataState<TaskDto>> createTask(TaskDto task);
  Future<DataState<void>> deleteTaskById(int id);
}
