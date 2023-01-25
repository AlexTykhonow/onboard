import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/consts/app_string.dart';

class InputFormField extends StatelessWidget {
  final String? hintText;
  final String labelText;
  final Widget? suffixIcon;
  final bool enabled;
  final bool optional;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final void Function()? onTap;

  const InputFormField({
    this.hintText,
    required this.labelText,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.enabled = true,
    this.optional = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => TextFormField(
        keyboardType: keyboardType,
        enabled: enabled,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          labelText:
              labelText + (optional ? ' (${tr(AppString.optional)})' : ''),
          hintText: hintText,
          suffixIcon: suffixIcon,
        ),
        onTap: onTap,
      );
}
