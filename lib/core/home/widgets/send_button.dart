import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../shared/consts/app_padding.dart';
import '../../../shared/consts/app_string.dart';
import '../../../shared/theme/copy_with/text_styles.dart';

class SendButton extends StatelessWidget {
  final void Function()? onPressed;

  const SendButton({
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.medium,
        ),
        child: Container(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              tr(AppString.send),
              style: const TextStyle().button,
            ),
          ),
        ),
      );
}
