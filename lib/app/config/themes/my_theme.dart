import 'package:firbaseproject/app/config/themes/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    textTheme: GoogleFonts.juaTextTheme(
      ThemeData.light().textTheme,
    ),
    primaryColor: MyColors.primary_500,
    brightness: Brightness.light,
    primaryColorDark: MyColors.primary_500.withOpacity(0.8),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(color: MyColors.primary_500),
    ),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: MyColors.primary_500,
      disabledColor: MyColors.primary_500,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: MyColors.primary_500,
      ),
    ),
  );
}
