import 'package:flutter/material.dart';

import '../../../shared/presentation/ui/foundations/colors_foundation.dart';
import '../../../shared/presentation/ui/tokens/app_sizes.dart';

extension ExtendedContext on BuildContext {
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  //Mostrar BottomSheets
  showModalBottomSheetCustom(
      {ShapeBorder? shape,
      required Widget widget,
      WidgetBuilder? builder,
      Color? backgroundColor = ColorsFoundation.bgDraggableSheet}) {
    return showModalBottomSheet(
      context: this,
      builder: (context) => widget,
      isScrollControlled: true,
      backgroundColor: backgroundColor,
      shape: shape ??
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppSizes.s20),
              topRight: Radius.circular(AppSizes.s20),
            ),
          ),
    );
  }
  
   //Mostrar SnackBar
  ScaffoldFeatureController showSnackbar(SnackBar snackBar,
      {AnimationStyle? snackBarAnimationStyle}) {
    return scaffoldMessenger.showSnackBar(snackBar,
        snackBarAnimationStyle: snackBarAnimationStyle);
  }

  void hideSnackBar() {
    return scaffoldMessenger.hideCurrentSnackBar();
  }
}
