import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants.dart';

class Themes {
  ThemeData get darkTheme => ThemeData(
        fontFamily: 'NunitoSans',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        backgroundColor: Colors.black,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          headline2: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            height: 24 / 16,
          ),
        ).apply(
          bodyColor: Color.fromRGBO(255, 255, 255, 1),
          displayColor: Color.fromRGBO(255, 255, 255, 1),
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
              borderRadius: BorderRadius.circular(16),
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
        dividerTheme: DividerThemeData(
          color: AppColors.black80,
          thickness: 1,
          space: 32,
        ),
      );

  ThemeData get lightTheme => ThemeData(
        fontFamily: 'NunitoSans',
        brightness: Brightness.light,
        colorScheme: ColorScheme.light(),
      );
}
