

import 'package:flutter/material.dart';
import 'package:task_app/shared/presentation/ui/foundations/colors_foundation.dart';

import '../tokens/tokens.dart';

class FilledButtonCustom extends StatelessWidget {
  const FilledButtonCustom({
    super.key,
    required this.label,
    required this.action,
    this.bgColor = ColorsFoundation.seedColor,
    this.isLoading = false,
    this.labelColor = ColorsFoundation.labelButtonColor,
  });
  final String label;
  final VoidCallback? action;
  final Color bgColor;
  final Color? labelColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: FilledButton(
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all(Size(Size.infinite.width, 48)),
          fixedSize: WidgetStateProperty.all(Size(Size.infinite.width, 48)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color?>(bgColor),
          elevation: WidgetStateProperty.all<double?>(0),
        ),
        onPressed: isLoading ? null : action,
        child: isLoading
            ? Container(
                alignment: Alignment.center,
                width: 22,
                height: 22,
                child: const CircularProgressIndicator(
                  color: ColorsFoundation.spinnerColorButton,
                  strokeWidth: 3,
                ))
            : FittedBox(
                child: Text(label,
                    style: AppFont.getBoldStyle(
                        letterSpacing: 0.3,
                        color: labelColor,
                        fontSize: AppSizes.s14)),
              ),
      ),
    );
  }
}
