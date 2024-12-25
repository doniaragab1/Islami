import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData
{
  static const Color primaryColor = Color(0XFFE2BB7F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.aBeeZee(
        color: primaryColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.aBeeZee(
        color: primaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.aBeeZee(
        color: primaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        color: primaryColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        color: primaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        color: primaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),

  );
}