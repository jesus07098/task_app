import 'package:flutter/material.dart';
import 'package:task_app/shared/presentation/ui/ui.dart';

class LabelField extends StatelessWidget {
  const LabelField(
      {super.key,
      required this.text,
      this.isRequiredField = false,
      this.isRequiredLabel = true});
  final String text;
  final bool isRequiredField;
  final bool isRequiredLabel;
  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: isRequiredLabel,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text, style: AppFont.getRegularStyle(fontSize: AppSizes.s14)),
            const SizedBox(width: 2),
            Visibility(
              visible: isRequiredField,
              child: const Icon(
                Icons.emergency,
                color: AppColors.red500,
                size: AppSizes.s8,
              ),
            )
          ],
        ));
  }
}
