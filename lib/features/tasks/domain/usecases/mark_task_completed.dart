import 'package:equatable/equatable.dart';

import '../../../../core/utils/resources/data_state.dart';
import '../../../../core/utils/resources/use_case.dart';
import '../repositories/tasks_repository.dart';

class MarkTaskCompletedUsecase
    implements UseCase<DataState<void>, MarkTaskCompletedParams> {
  final TasksRepository _tasksRepository;
  MarkTaskCompletedUsecase(this._tasksRepository);

  @override
  Future<DataState<void>> call({required MarkTaskCompletedParams params}) {
    return _tasksRepository.deleteTaskById(params.id);
  }
}

class MarkTaskCompletedParams extends Equatable {
  final int id;

  const MarkTaskCompletedParams(
    this.id,
  );

  @override
  List<Object?> get props => [id];
}
