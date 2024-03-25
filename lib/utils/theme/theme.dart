import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/theme/custom_theme.dart/appbar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme.dart/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme.dart/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme.dart/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme.dart/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme.dart/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme.dart/text_field_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme.dart/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: TColors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.grey,
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: TColors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
