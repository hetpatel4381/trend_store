import 'package:flutter/material.dart';


// Custom class for Light & Dark BottomSheet theme.
class AppBottomSheetTheme {
  AppBottomSheetTheme._();

  // Customizable Light BottomSheet Theme.
  static BottomSheetThemeData lightbottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  // Customizable Dark BottomSheet Theme.
  static BottomSheetThemeData darkbottomSheetThemeData = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
  
}
