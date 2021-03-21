import 'package:flutter/material.dart';

final primaryColor = Color(0xFF6930c3);
final primaryColorDark = Color(0xFF4e2391);
final primaryColorLight = Color(0xFF803af0);

Map<int, Color> color = {
  50: primaryColor,
  100: primaryColor,
  200: primaryColor,
  300: primaryColor,
  400: primaryColor,
  500: primaryColor,
  600: primaryColor,
  700: primaryColor,
  800: primaryColor,
  900: primaryColor,
};
MaterialColor customColor = MaterialColor(0xFF6930c3, color);

final TextStyle headline1 = TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold, color: primaryColorDark);
final TextStyle headline2 = TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: primaryColorDark);
final TextStyle headline3 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: primaryColorDark,
);

ThemeData appTheme() {
  // final primaryColor = Color(0xFF6930c3);
  //   final primaryColorDark = Color(0xFF4e2391);
  //   final primaryColorLight = Color(0xFF803af0);

  // final errorColor = Color(0xFFdfb9bb); The Default red color is better than this one
  return ThemeData(
    primarySwatch: customColor,
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    errorColor: Colors.red,
    scaffoldBackgroundColor: primaryColorLight,
    fontFamily: 'XanhMono',
    textTheme: TextTheme(
        headline1: headline1, headline2: headline2, headline3: headline3),
    appBarTheme: AppBarTheme(elevation: 0),
    inputDecorationTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primaryColorLight)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: primaryColor))),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      textStyle: headline3,
      shadowColor: Colors.black,
    )),
  );
}
