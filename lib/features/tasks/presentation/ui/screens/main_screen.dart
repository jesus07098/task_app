import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/core/utils/extensions/context_extension.dart';
import 'package:task_app/features/tasks/presentation/blocs/tasks/task_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/features/tasks/presentation/ui/molecules/draggable_header_general.dart';
import 'package:task_app/shared/presentation/ui/atoms/textformfield_custom.dart';
import 'package:task_app/shared/presentation/ui/atoms/textformfield_multiline.dart';

import '../../../../../shared/presentation/ui/molecules/filled_button_custom.dart';
import '../../../../../shared/presentation/ui/molecules/snackbar_custom.dart';
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
                  widget: BlocConsumer<TaskBloc, TaskState>(
                listenWhen: (previous, current) =>
                    previous.formStatus != current.formStatus,
                listener: (context, state) {
                  if (state.message == '') {
                    return;
                  }
                  if (state.formStatus == FormzSubmissionStatus.success) {
                    context.showSnackbar(SnackBarCustom.snackBar(state.message,
                        type: SnackBarType.success));
                  } else if (state.formStatus ==
                          FormzSubmissionStatus.canceled ||
                      state.formStatus == FormzSubmissionStatus.failure) {
                    context.showSnackbar(SnackBarCustom.snackBar(state.message,
                        type: SnackBarType.error));
                  }
                },
                builder: (context, state) {
                  return DraggableScrollableSheet(
                      minChildSize: 0.8,
                      initialChildSize: 0.8,
                      maxChildSize: 0.8,
                      expand: false,
                      builder: (context, scrollController) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const DraggableHeaderGeneral(
                                title: 'Agregar Nota',
                                centerTitle: false,
                              ),
                              Expanded(
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: AppSizes.s16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const LabelField(
                                            text: 'Título',
                                            isRequiredField: true,
                                          ),
                                          TextFormFieldCustom(
                                            errorText: state.isFormPosted
                                                ? state.title.errorMessage
                                                : null,
                                            onChanged: (value) {
                                              context
                                                  .read<TaskBloc>()
                                                  .add(OnTitleChange(value));
                                            },
                                          ),
                                          const SizedBox(
                                            height: AppSizes.s10,
                                          ),
                                          const LabelField(
                                            text: 'Descripción',
                                          ),
                                          const TextFormFieldArea(),
                                        ],
                                      ))),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: AppSizes.s18,
                                      left: AppSizes.s16,
                                      right: AppSizes.s16),
                                  child: FilledButtonCustom(
                                    label: 'Crear Nota',
                                    action: () {
                                      context
                                          .read<TaskBloc>()
                                          .add(OnCreateTask());

                                      context.pop();
                                    },
                                  ))
                            ],
                          ));
                },
              ));
            },
            tooltip: 'Add Task',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
