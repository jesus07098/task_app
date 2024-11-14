import 'package:flutter/material.dart';

import '../../ui.dart';

class AppTheme {
  static ThemeData getTheme() => ThemeData(
        //GENERAL CONFIGS
        useMaterial3: true,
        fontFamily: AppFont.fontFamily,
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorsFoundation.seedColor,
            onPrimaryContainer: AppColors.primaryDark,
            onSecondaryContainer: AppColors.secondaryDark,
            onTertiaryContainer: AppColors.terciaryDark),
        scaffoldBackgroundColor: ColorsFoundation.bgScaffoldDark,

        //APPBAR
        appBarTheme: const AppBarTheme(
            scrolledUnderElevation: 0.0,
            iconTheme: IconThemeData(color: ColorsFoundation.darkTextColor),
            color: ColorsFoundation.bgDarkAppBar,
            surfaceTintColor: AppColors.transparent,
            titleTextStyle: TextStyle(color: ColorsFoundation.darkTextColor)),

        //BOTTOM APPBAR
        bottomAppBarTheme:
            const BottomAppBarTheme(color: ColorsFoundation.bgScaffoldDark),

        //SNACKBAR
        snackBarTheme:
            const SnackBarThemeData(closeIconColor: AppColors.statusDanger01),

        //DRAWER
        drawerTheme: const DrawerThemeData(
            backgroundColor: ColorsFoundation.bgScaffoldDark),

        //ICON BUTTON
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            iconColor: WidgetStatePropertyAll(ColorsFoundation.darkTextColor),
          ),
        ),

        filledButtonTheme: const FilledButtonThemeData(
            style: ButtonStyle(
                foregroundColor:
                    WidgetStatePropertyAll(ColorsFoundation.darkTextColor))),
        //TEXT BUTTON
        textButtonTheme: const TextButtonThemeData(
            style: ButtonStyle(
                foregroundColor:
                    WidgetStatePropertyAll(ColorsFoundation.darkTextColor))),

        dividerTheme:
            const DividerThemeData(color: ColorsFoundation.bgScaffoldDark),
        //ELEVATED BUTTON
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
          surfaceTintColor:
              WidgetStatePropertyAll(ColorsFoundation.darkTextColor),
          textStyle: WidgetStatePropertyAll(
              TextStyle(color: ColorsFoundation.darkTextColor)),
          iconColor: WidgetStatePropertyAll(ColorsFoundation.darkTextColor),
        )),

        //ICONS
        iconTheme: const IconThemeData(
          color: ColorsFoundation.darkTextColor,
        ),

        listTileTheme: const ListTileThemeData(
            iconColor: ColorsFoundation.darkTextColor,
            tileColor: AppColors.primaryDark,
            textColor: AppColors.neutral50),

        //TextFields & TextFormFields Input Decoration

        inputDecorationTheme: InputDecorationTheme(
            fillColor: ColorsFoundation.bgDarkCardSecondary,
            hintStyle: AppFont.getRegularStyle(color: AppColors.schemeSubtext),
            prefixIconColor: ColorsFoundation.darkTextColor),

        //SWITCH
        switchTheme: const SwitchThemeData(
            thumbColor: WidgetStatePropertyAll(ColorsFoundation.darkTextColor)),

        //TEXT CONFIG
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: ColorsFoundation.darkTextColor),
          bodyMedium: TextStyle(color: ColorsFoundation.darkTextColor),
          bodySmall: TextStyle(color: ColorsFoundation.darkTextColor),
          displayLarge: TextStyle(color: ColorsFoundation.darkTextColor),
          displayMedium: TextStyle(color: ColorsFoundation.darkTextColor),
          displaySmall: TextStyle(color: ColorsFoundation.darkTextColor),
          headlineLarge: TextStyle(color: ColorsFoundation.darkTextColor),
          headlineMedium: TextStyle(color: ColorsFoundation.darkTextColor),
          headlineSmall: TextStyle(color: ColorsFoundation.darkTextColor),
        ),
      );

  // LIGHT THEME

  static ThemeData getLightTheme() => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: ColorsFoundation.seedColor,
            onPrimaryContainer: ColorsFoundation.bgLightCardPrimary,
            onSecondaryContainer: ColorsFoundation.bgLightCardSecondary,
            onTertiaryContainer: ColorsFoundation.bgLightCardTerciary),
        scaffoldBackgroundColor: ColorsFoundation.bgScaffoldLight,

        appBarTheme: const AppBarTheme(
            scrolledUnderElevation: 0.0,
            iconTheme: IconThemeData(color: ColorsFoundation.darkTextColor),
            color: ColorsFoundation.bgDarkAppBar,
            surfaceTintColor: AppColors.transparent,
            titleTextStyle: TextStyle(color: ColorsFoundation.darkTextColor)),

        //ICONS
        iconTheme: const IconThemeData(
          color: ColorsFoundation.lightTextColor,
        ),

        inputDecorationTheme: InputDecorationTheme(
            fillColor: ColorsFoundation.bgLightCardPrimary,
            hintStyle: AppFont.getRegularStyle(color: AppColors.schemeSubtext),
            prefixIconColor: ColorsFoundation.lightTextColor),
        //DRAWER
        drawerTheme: const DrawerThemeData(
            backgroundColor: ColorsFoundation.bgScaffoldLight),

        listTileTheme: const ListTileThemeData(
            iconColor: ColorsFoundation.lightTextColor,
            tileColor: AppColors.primaryLight,
            textColor: ColorsFoundation.lightTextColor),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: ColorsFoundation.lightTextColor),
          bodyMedium: TextStyle(color: ColorsFoundation.lightTextColor),
          bodySmall: TextStyle(color: ColorsFoundation.lightTextColor),
          displayLarge: TextStyle(color: ColorsFoundation.lightTextColor),
          displayMedium: TextStyle(color: ColorsFoundation.lightTextColor),
          displaySmall: TextStyle(color: ColorsFoundation.lightTextColor),
          headlineLarge: TextStyle(color: ColorsFoundation.lightTextColor),
          headlineMedium: TextStyle(color: ColorsFoundation.lightTextColor),
          headlineSmall: TextStyle(color: ColorsFoundation.lightTextColor),
        ),
      );
}
