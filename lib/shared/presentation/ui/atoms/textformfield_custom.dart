import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:task_app/shared/presentation/ui/foundations/colors_foundation.dart';

import '../../../../features/tasks/presentation/ui/atoms/label.dart';
import '../tokens/tokens.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom(
      {super.key,
      this.hinttext,
      this.validator,
      this.controller,
      this.onChanged,
      this.initialValue,
      this.readOnly = false,
      this.maxLength,
      this.obscureText = false,
      this.horizontalPadding = AppSizes.s14,
      this.verticalPadding = AppSizes.s14,
      this.suffix,
      this.prefixIcon,
      this.suffixIcon,
      this.inputFormatters,
      this.fontSizeLabel = AppSizes.s12,
      this.keyboardType,
      this.textAlign = TextAlign.start,
      this.autovalidateMode,
      this.focusNode,
      this.onTap,
      this.onTapOutside,
      this.enableInteractiveSelection,
      this.errorText,
      this.fontSize = AppSizes.s12,
      this.borderRadius = AppSizes.s12,
      this.marginBottom = AppSizes.s16,
      this.marginTop = 0.0,
      this.marginLeft = 0.0,
      this.marginRight = 0.0,
      this.isRequiredLabel = true,
      this.isHiddenField = false,
      this.isRequiredField = false,
      this.label = '',
      this.fillColor,
      this.maxLines = 1,
      this.isDense,
      this.counterText,
      this.prefix,
      this.autofocus = false,
      this.enabled = true})
      : assert(errorText == null || validator == null,
            'The errorText and Validator not empty');

  final String? hinttext;
  final TextInputType? keyboardType;
  final dynamic controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? initialValue;
  final bool readOnly;
  final int? maxLength;
  final bool obscureText;
  final double horizontalPadding;
  final double verticalPadding;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final double? fontSizeLabel;
  final void Function()? onTap;
  final TextAlign textAlign;
  final AutovalidateMode? autovalidateMode;
  final FocusNode? focusNode;
  final String? errorText;
  final bool? enableInteractiveSelection;
  final double fontSize;
  final double borderRadius;
  final double marginBottom;
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final void Function(PointerDownEvent)? onTapOutside;
  final bool? isRequiredLabel;
  final bool? isRequiredField;
  final String? label;
  final int? maxLines;
  final bool isHiddenField;
  final Color? fillColor;
  final bool autofocus;
  final bool? isDense;
  final String? counterText;
  final bool enabled;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !isHiddenField,
      child: Padding(
        padding: EdgeInsets.only(
            bottom: marginBottom,
            left: marginLeft,
            right: marginRight,
            top: marginTop),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSizes.s4),
            Visibility(
              visible: label == '' ? false : true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LabelField(
                    text: label!,
                    isRequiredField: isRequiredField!,
                    isRequiredLabel: isRequiredLabel!,
                  ),
                  const SizedBox(height: AppSizes.s8),
                ],
              ),
            ),
            TextFormField(
              autofocus: autofocus,
              onTap: onTap,
              onTapOutside: onTapOutside,
              focusNode: focusNode,
              style: AppFont.getRegularStyle(fontSize: fontSize),
              readOnly: readOnly,
              maxLines: obscureText == false ? maxLines : 1,
              textAlign: textAlign,
              keyboardType: keyboardType,
              controller: (controller != null) ? controller : null,
              validator: validator,
              initialValue: initialValue,
              obscureText: obscureText,
              autovalidateMode: autovalidateMode,
              inputFormatters: inputFormatters,
              enableInteractiveSelection: enableInteractiveSelection,
              decoration: InputDecoration(
                fillColor: ColorsFoundation.bgTextField,
                errorText: errorText,
                prefixIcon: prefixIcon,
                prefix: prefix,
                suffix: suffix,
                suffixIcon: suffixIcon,
                counterText: counterText,
                isDense: isDense,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                    vertical: verticalPadding, horizontal: horizontalPadding),
                hintText: hinttext,
                labelStyle: TextStyle(fontSize: fontSizeLabel),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: const BorderSide(
                        color: ColorsFoundation.textFieldBorder)),
                enabled: enabled,
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 40, minHeight: 14),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorsFoundation.textFieldBorder),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: const BorderSide(
                    color: ColorsFoundation.statusDanger,
                  ),
                ),
                errorMaxLines: 2,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorsFoundation.seedColor,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
