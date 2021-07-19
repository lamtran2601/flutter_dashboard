import 'package:flutter/material.dart';

class Themes {
  final darkTheme = ThemeData(
    fontFamily: 'NunitoSans',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(),
    ),
    colorScheme: ColorScheme.dark().copyWith(
      onBackground: Color.fromRGBO(15, 19, 27, 1),
      primary: Color.fromRGBO(255, 255, 255, 1),
      onPrimary: Color.fromRGBO(255, 255, 255, 1),
      background: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        primary: Color.fromRGBO(248, 119, 0, 1),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          height: 24 / 16,
        ),
      ),
    ),
    toggleableActiveColor: Colors.orange,
  );

  final lightTheme = ThemeData(
    fontFamily: 'NunitoSans',
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(),
  );
}
