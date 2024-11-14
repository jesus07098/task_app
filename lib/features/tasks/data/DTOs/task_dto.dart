
import '../../domain/entities/task.dart';

class TaskDto {
  final String title;
  final bool isCompleted;
  final String? description;

  TaskDto({
    required this.title,
    required this.isCompleted,  
    this.description,
  });

  factory TaskDto.fromJson(Map<String, dynamic> json) => TaskDto(
        title: json["title"],
        description: json["description"],
        isCompleted: json["isCompleted"],
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
