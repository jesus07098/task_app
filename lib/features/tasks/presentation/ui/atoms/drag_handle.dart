

import 'package:flutter/material.dart';
import 'package:task_app/shared/presentation/ui/foundations/colors_foundation.dart';

import '../../../../../shared/presentation/ui/tokens/app_sizes.dart';

class DragHandle extends StatelessWidget {
  const DragHandle({super.key, this.width = AppSizes.s30});
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: width,
        height: 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.s10),
            color: ColorsFoundation.dragHandle));
  }
}
