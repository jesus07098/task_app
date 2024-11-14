import '../../../../core/utils/resources/data_state.dart';
import '../../data/DTOs/task_dto.dart';
import '../entities/task.dart';

abstract class TasksRepository {
  Future<DataState<List<Task>>> getTasks();
  Future<DataState> createTask(TaskDto task);
  Future<void> deleteTaskById(String id);
  
}
