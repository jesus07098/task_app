import 'package:isar/isar.dart';

part 'task.g.dart';

@Collection()
class Task {
   Id? id;
  final String title;
  final String? description;
  final bool isCompleted;

   Task({

    required this.title,
    this.description,
    required this.isCompleted,
  });
}
