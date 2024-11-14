import 'package:flutter/material.dart';

import 'package:task_app/app.dart';

import 'core/config/plugins/isar_plugin.dart';
import 'core/di/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarPlugin.initDb();
  initDependencies();
  runApp(const TaskApp());
}
