import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_app/features/tasks/domain/entities/task.dart';

class IsarPlugin {
  static late final Isar _db;

  static Future<void> initDb() async {
    final dir = await getApplicationDocumentsDirectory();
    _db = await Isar.open([TaskSchema], directory: dir.path, inspector: true);
  }

  // static Future<void> cleanDb() async {
  //   await _db.writeTxn(() => cleanDb());
  // }

  static Isar get instance => _db;
}
