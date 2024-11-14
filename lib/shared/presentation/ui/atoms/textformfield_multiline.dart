import 'package:flutter/material.dart';

import '../tokens/tokens.dart';
import 'textformfield_custom.dart';

class TextFormFieldArea extends StatelessWidget {
  const TextFormFieldArea(
      {super.key,
      this.validator,
      this.isRequiredLabel = true,
      this.isHiddenField = false,
      this.isRequiredField = false,
      this.label = '',
      this.readOnly = false,
      this.onChanged});

  final String? Function(String?)? validator;
  final bool? isRequiredField;
  final void Function(String)? onChanged;
  final bool isHiddenField;
  final bool? isRequiredLabel;
  final String? label;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !isHiddenField,
      child: TextFormFieldCustom(
          maxLines: 7,
          maxLength: 1000,
          horizontalPadding: AppSizes.s8,
          label: label,
          isRequiredField: isRequiredField,
          isRequiredLabel: isRequiredLabel,
          readOnly: readOnly,
          validator: validator,
          onChanged: onChanged),
    );
  }
}