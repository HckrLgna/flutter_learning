import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.green;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //ColorPrimario
        primaryColor: Colors.indigo,
        //appbar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
        ),
        //Text Buttom Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
        )
      );
static final ThemeData darkTheme = ThemeData.light().copyWith();
}
