import 'package:get_it/get_it.dart';
import 'package:task_app/features/tasks/data/datasources/tasks_datasource_impl.dart';
import 'package:task_app/features/tasks/domain/datasources/tasks_datasource.dart';
import 'package:task_app/features/tasks/domain/usecases/create_task_usecase.dart';
import 'package:task_app/features/tasks/presentation/blocs/tasks/task_bloc.dart';

import '../../features/tasks/data/repositories/tasks_repository_impl.dart';
import '../../features/tasks/domain/repositories/tasks_repository.dart';
import '../../features/tasks/domain/usecases/get_tasks_usecase.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
// ██╗   ██╗███████╗███████╗ ██████╗ █████╗ ███████╗███████╗███████╗
// ██║   ██║██╔════╝██╔════╝██╔════╝██╔══██╗██╔════╝██╔════╝██╔════╝
// ██║   ██║███████╗█████╗  ██║     ███████║███████╗█████╗  ███████╗
// ██║   ██║╚════██║██╔══╝  ██║     ██╔══██║╚════██║██╔══╝  ╚════██║
// ╚██████╔╝███████║███████╗╚██████╗██║  ██║███████║███████╗███████║
//  ╚═════╝ ╚══════╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝

  injector
    ..registerLazySingleton(() => TaskBloc(
          injector(),
          injector()
        ))
    ..registerLazySingleton(
      () => GetTasksUseCase(
        injector(),
      ),
    )
     ..registerLazySingleton(
      () => CreateTaskUseCase(
        injector(),
      ),
    )
    ..registerLazySingleton<TasksRepository>(
      () => TasksRepositoryImpl(
        injector(),
      ),
    )

// ██████╗ ███████╗██████╗  ██████╗ ███████╗██╗████████╗ ██████╗ ██████╗ ██╗███████╗███████╗
// ██╔══██╗██╔════╝██╔══██╗██╔═══██╗██╔════╝██║╚══██╔══╝██╔═══██╗██╔══██╗██║██╔════╝██╔════╝
// ██████╔╝█████╗  ██████╔╝██║   ██║███████╗██║   ██║   ██║   ██║██████╔╝██║█████╗  ███████╗
// ██╔══██╗██╔══╝  ██╔═══╝ ██║   ██║╚════██║██║   ██║   ██║   ██║██╔══██╗██║██╔══╝  ╚════██║
// ██║  ██║███████╗██║     ╚██████╔╝███████║██║   ██║   ╚██████╔╝██║  ██║██║███████╗███████║
// ╚═╝  ╚═╝╚══════╝╚═╝      ╚═════╝ ╚══════╝╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝╚══════╝╚══════╝
    ..registerLazySingleton<TasksDatasource>(() => TasksDatasourceImpl());
}
