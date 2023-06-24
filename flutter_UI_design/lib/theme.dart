import 'package:flutter/material.dart';

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.cyanAccent), color: Colors.indigo[600], titleTextStyle: TextStyle(color: Colors.cyanAccent, fontSize: 20, fontWeight: FontWeight.w600)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.teal[700])),
      textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          headline5: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w700, fontSize: 20),
          headline4: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w500)));
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: Colors.white), color: Colors.indigo[900], titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.teal[400])),
      textTheme: TextTheme(
          headline6: TextStyle(color: Colors.teal[900], fontWeight: FontWeight.w700),
          headline5: TextStyle(color: Colors.cyan, fontWeight: FontWeight.w700, fontSize: 20),
          headline4: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500)));
}
