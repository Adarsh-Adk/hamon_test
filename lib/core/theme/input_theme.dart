import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import 'app_color_scheme.dart';

class InputTheme {
  static InputDecorationTheme inputTheme = InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      filled: true,
      fillColor: AppColorScheme.backgroundColorLight,
      iconColor: AppColorScheme.primaryContainerColorLight,
      prefixIconColor: AppColorScheme.primaryContainerColorLight,
      prefixStyle: const TextStyle(
        color: AppColorScheme.primaryContainerColorLight,
      ),
      labelStyle:
          const TextStyle(color: AppColorScheme.primaryContainerColorLight),
      hintStyle: TextStyle(
          color: AppColorScheme.primaryContainerColorLight.withOpacity(0.3)),
      errorBorder: errorBorder,
      focusedErrorBorder: errorBorder,
      focusedBorder: border,
      enabledBorder: border,
      border: border,
      disabledBorder: border,
      suffixIconColor: AppColorScheme.primaryColorLight,
      errorMaxLines: 3);

  static OutlineInputBorder border = OutlineInputBorder(
      borderRadius: AppConstants.borderRadius,
      borderSide: const BorderSide(color: AppColorScheme.primaryColorLight));

  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: AppConstants.borderRadius,
    borderSide: const BorderSide(color: AppColorScheme.error),
  );
}
