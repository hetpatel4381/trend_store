import 'package:flutter/material.dart';
import 'package:trend_store/utils/constants/colors.dart';
import 'package:trend_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:trend_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:trend_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:trend_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:trend_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:trend_store/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:trend_store/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipThemeData,
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: SAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxThemeData,
    bottomSheetTheme: AppBottomSheetTheme.lightbottomSheetThemeData,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipThemeData,
    scaffoldBackgroundColor: AppColors.black,
    // appBarTheme: SAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxThemeData,
    bottomSheetTheme: AppBottomSheetTheme.darkbottomSheetThemeData,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
