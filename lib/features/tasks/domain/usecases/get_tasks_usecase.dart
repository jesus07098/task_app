import 'package:task_app/features/tasks/domain/repositories/tasks_repository.dart';

import '../../../../core/utils/resources/data_state.dart';
import '../../../../core/utils/resources/use_case.dart';
import '../entities/task.dart';

class GetTasksUseCase implements UseCase<DataState<List<Task>>, NoParams> {
  final TasksRepository _tasksRepository;
  GetTasksUseCase(this._tasksRepository);

  @override
  Future<DataState<List<Task>>> call({required NoParams params}) {
    return _tasksRepository.getTasks();
  }
}
