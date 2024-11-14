import 'package:flutter/material.dart';

import '../../ui.dart';

class AppTheme {
  static ThemeData getTheme() => ThemeData(
        //GENERAL CONFIGS
        useMaterial3: true,
        colorSchemeSeed: ColorsFoundation.seedColor,
        fontFamily: AppFont.fontFamily,
        scaffoldBackgroundColor: ColorsFoundation.bgScaffold,
        // APPBAR
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorsFoundation.bgAppBar,
          scrolledUnderElevation: 0.0,
          surfaceTintColor: AppColors.transparent,
        ),
      );
}
