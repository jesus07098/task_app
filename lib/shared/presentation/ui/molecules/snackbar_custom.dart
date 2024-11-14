import 'package:flutter/material.dart';

import '../foundations/colors_foundation.dart';
import '../tokens/tokens.dart';

enum SnackBarType {
  warning(
      icon: Icons.warning_amber_outlined,
      color: ColorsFoundation.statusWarning),
  success(
      icon: Icons.check_circle_outline_outlined,
      color: ColorsFoundation.statusSuccess),
  info(icon: Icons.info_outline_rounded, color: ColorsFoundation.statusInfo),
  error(
      icon: Icons.error_outline_outlined, color: ColorsFoundation.statusDanger);

  const SnackBarType({required this.icon, required this.color});

  final IconData icon;
  final Color color;
  static IconData getIcon(SnackBarType type) => type.icon;
  static Color getColor(SnackBarType type) => type.color;
}

class SnackBarCustom {
  static SnackBar snackBar(String message,
      {required SnackBarType type,
      SnackBarBehavior? behavior = SnackBarBehavior.floating}) {
    return SnackBar(
        behavior: behavior,
        showCloseIcon: true,
        closeIconColor: ColorsFoundation.bgScaffold,
        backgroundColor: AppColors.neutral50,
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Icon(SnackBarType.getIcon(type),
                  color: SnackBarType.getColor(type), size: AppSizes.s27),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                maxLines: 2,
                style: AppFont.getRegularStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: AppSizes.s14,
                    color: AppColors.black500),
              ),
            ),
          ],
        ));
  }
}
