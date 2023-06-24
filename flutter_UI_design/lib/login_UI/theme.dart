import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkModel => themeMode == ThemeMode.dark;
}

class MyAppTheme {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(),
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: Colors.teal[700],
          suffixIconColor: Colors.teal[700],
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.indigo)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.cyanAccent),
          color: Colors.indigo[600],
          titleTextStyle: TextStyle(
              color: Colors.cyanAccent,
              fontSize: 20,
              fontWeight: FontWeight.w600)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.teal[700])),
      textTheme: TextTheme(
          headline6:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          headline5: TextStyle(
              color: Colors.indigo, fontWeight: FontWeight.w700, fontSize: 20),
          headline4:
              TextStyle(color: Colors.indigo, fontWeight: FontWeight.w500)));

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(),
      scaffoldBackgroundColor: Color(0xFF000B21),
      inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: Colors.tealAccent,
          suffixIconColor: Colors.tealAccent,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 3, color: Colors.indigoAccent)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.indigo[900],
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.teal[400])),
      textTheme: TextTheme(
          headline6:
              TextStyle(color: Colors.teal[900], fontWeight: FontWeight.w700),
          headline5: TextStyle(
              color: Colors.cyan, fontWeight: FontWeight.w700, fontSize: 20),
          headline4:
              TextStyle(color: Colors.blue, fontWeight: FontWeight.w500)));
}
