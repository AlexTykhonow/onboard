import 'package:flutter/material.dart';

import '../consts/app_padding.dart';

extension SnackBarExtension on BuildContext {
  void showErrorSnackBar(String error) => ScaffoldMessenger.of(this)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Row(
          children: [
            const Icon(Icons.error, color: Colors.white),
            const SizedBox(width: AppPadding.small),
            Flexible(child: Text(error)),
          ],
        ),
      ),
    );

  void showSuccessSnackBar(String messageKey) => ScaffoldMessenger.of(this)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Row(
          children: [
            const Icon(Icons.done, color: Colors.white),
            const SizedBox(width: AppPadding.small),
            Flexible(child: Text(messageKey)),
          ],
        ),
      ),
    );
}
