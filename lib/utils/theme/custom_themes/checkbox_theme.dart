import 'package:flutter/material.dart';
import 'package:trend_store/utils/constants/colors.dart';

// Custom class for Light & Dark Text theme.
class AppCheckBoxTheme {
  AppCheckBoxTheme._();

  // Customizable Light Text Theme.
  static CheckboxThemeData lightCheckBoxThemeData = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return AppColors.primary;
        } else {
          return Colors.transparent;
        }
      }));

  // Customizable Dark Text Theme.
  static CheckboxThemeData darkCheckBoxThemeData = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.black;
        } else {
          return Colors.white;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }));
}
