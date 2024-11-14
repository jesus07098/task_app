import 'package:task_app/features/tasks/data/DTOs/task_dto.dart';

import '../../../../core/utils/resources/data_state.dart';
import '../../../../core/utils/resources/use_case.dart';
import '../entities/task.dart';
import '../repositories/tasks_repository.dart';

class CreateTaskUseCase implements UseCase<DataState<Task>, TaskDto> {
  final TasksRepository _tasksRepository;
  CreateTaskUseCase(this._tasksRepository);

  @override
  Future<DataState<Task>> call({required TaskDto params}) {
    return _tasksRepository.createTask(params);
  }
}
