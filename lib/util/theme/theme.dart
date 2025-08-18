import 'package:ecommerce/util/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce/util/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce/util/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'custom_theme/app_bar_theme.dart';
import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/check_box_theme.dart';
import 'custom_theme/outlined_button_theme.dart';
import 'custom_theme/text_form_theme.dart';

class  AppTheme{
  AppTheme._();
  // light Theme
  static ThemeData lightTheme =ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    checkboxTheme: CheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: BottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: OutLinedButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
    chipTheme: CustomChipTheme.lightCustomChipTheme,
    textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightTheme

  );
  // dark Theme
  static ThemeData darkTheme =ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    checkboxTheme: CheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: BottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: OutLinedButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: CustomChipTheme.darkCustomChipTheme,
    textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkTheme

  );

}