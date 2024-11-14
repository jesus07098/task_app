import 'package:flutter/material.dart';
import 'package:task_app/core/utils/extensions/context_extension.dart';
import 'package:task_app/features/tasks/presentation/blocs/tasks/task_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/tasks/presentation/ui/molecules/draggable_header_general.dart';
import 'package:task_app/shared/presentation/ui/atoms/textformfield_custom.dart';
import 'package:task_app/shared/presentation/ui/atoms/textformfield_multiline.dart';

import '../../../../../shared/presentation/ui/ui.dart';
import '../atoms/label.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    context.read<TaskBloc>().add(OnGetTask());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (_, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Tasky',
            ),
          ),
          body: ListView.builder(
              itemCount: state.tasks.length,
              itemBuilder: (context, i) => CheckboxListTile.adaptive(
                    onChanged: (v) {},
                    title: Text(state.tasks[i].title.toString(),
                        style: const TextStyle(color: Colors.black)),
                    subtitle: Text(state.tasks[i].description.toString(),
                        style: const TextStyle(color: Colors.black)),
                    value: state.tasks[i].isCompleted,
                  )),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.showModalBottomSheetCustom(
                  widget: DraggableScrollableSheet(
                      minChildSize: 0.8,
                      initialChildSize: 0.8,
                      maxChildSize: 0.8,
                      expand: false,
                      builder: (context, scrollController) => const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DraggableHeaderGeneral(
                                title: 'Agregar Nota',
                                centerTitle: false,
                              ),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppSizes.s16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          LabelField(
                                            text: 'Título',
                                            isRequiredField: true,
                                          ),
                                          TextFormFieldCustom(),
                                          SizedBox(
                                            height: AppSizes.s10,
                                          ),
                                          LabelField(
                                            text: 'Descripción',
                                          ),
                                           TextFormFieldArea(),
                                        ],
                                      ))),
                            ],
                          )));
            },
            tooltip: 'Add Task',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
