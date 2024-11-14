import 'package:flutter/material.dart';

import 'package:task_app/app.dart';

import 'core/config/plugins/isar_plugin.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarPlugin.initDb();
  runApp(const TaskApp());
}
