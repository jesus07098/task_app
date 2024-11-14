import 'package:isar/isar.dart';

import '../../domain/entities/task.dart';

part 'task_dto.g.dart';


@Collection()
class TaskDto {
  Id? id;
  final String title;
  final bool? isCompleted;
  final String? description;

  TaskDto({
    required this.title,
    required this.isCompleted,
    this.description,
  });

  factory TaskDto.fromJson(Map<String, dynamic> json) => TaskDto(
        title: json["title"],
        description: json["description"],
        isCompleted: json["isCompleted"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "isCompleted": isCompleted,
      };

  // Conversión entre Task y TaskDto
  Task toTask() => Task(
        title: title,
        isCompleted: isCompleted,
        description: description,
      );


  factory TaskDto.fromTask(Task task) => TaskDto(
        title: task.title,
        isCompleted: task.isCompleted,
        description: task.description,
      );
}
