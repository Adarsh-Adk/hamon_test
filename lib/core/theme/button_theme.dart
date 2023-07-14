import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import 'app_color_scheme.dart';

class AppButtonThemeData {
  static ElevatedButtonThemeData elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(5),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding,
              vertical: AppConstants.defaultPadding),
        ),
        backgroundColor:
            MaterialStateProperty.all(AppColorScheme.primaryColorLight),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: AppConstants.borderRadius,
          ),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData outlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
                horizontal: AppConstants.defaultPadding,
                vertical: AppConstants.defaultPadding),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: AppConstants.borderRadius,
            ),
          ),
          side: MaterialStateProperty.all(
            const BorderSide(color: AppColorScheme.primaryColorLight, width: 1),
          )),
    );
  }

  static TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding,
              vertical: AppConstants.defaultPadding),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: AppConstants.borderRadius,
          ),
        ),
      ),
    );
  }
}
