import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';


class ColorsFoundation {
  ColorsFoundation._();
  //DARK MODE ---------------------------------------------------------------
  static const Color bgScaffoldDark = AppColors.backgroundDark;
  static const Color bgDarkAppBar = AppColors.backgroundDark;
  static const Color bgDarkCardSecondary = AppColors.secondaryDark;
  static const Color bgDarkCardPrimary = AppColors.primaryDark;
  static const Color darkTextColor = AppColors.neutral50;
  static const Color bgChipColor = AppColors.accent500;

  //LIGHT MODE ---------------------------------------------------------------
  static const Color bgScaffoldLight = AppColors.neutral50;
  static const Color bgLightAppBar = AppColors.neutral50;
  static const Color bgLightCardPrimary = AppColors.primaryLight;
  static const Color bgLightCardSecondary = AppColors.secondaryLight;
  static const Color bgLightCardTerciary = AppColors.terciaryLight;
  static const Color lightTextColor = AppColors.primaryDark;

  //GENERAL ---------------------------------------------------------------
  static const Color seedColor = AppColors.accent500;
  static const Color detailsColorError = AppColors.statusDanger02;
  static const Color snackbarError = AppColors.statusDanger01;
  static const Color snackbarSuccess = AppColors.accent500;
  static const Color borderInputSelected = AppColors.accent500;
  static const Color tabBottomBarSelected = AppColors.accent500;
  static const Color tabBottomBarUnselected = AppColors.transparent;
  static const Color bgElevatedButton = AppColors.accent500;
  static const Color bgFilledButton = AppColors.accent500;
  static const Color bgBadge = AppColors.accent500;
  static const Color bgCheckPrimary = AppColors.accent500;
}
