import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  static ThemeMode themeMode = ThemeMode.dark;

  void toggleTheme () {
    if (themeMode == ThemeMode.dark) {
      themeMode = ThemeMode.light;
    }
    else {
      themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }
}

class ToDoAppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(),
      scaffoldBackgroundColor: const Color(0xFFB6BAF6),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white54,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(40),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(width: 3, color: Colors.deepPurple),
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.indigo.shade900),
        backgroundColor: const Color(0xFFB6BAF6),
      ),
      dialogBackgroundColor: Colors.blue[300],
      primaryColor: Colors.deepPurple,
      textTheme: const TextTheme(
          headlineSmall: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          titleSmall: TextStyle(fontSize: 16, color: Colors.white70),
          titleMedium: TextStyle(fontSize: 18, color: Colors.white70),
          bodySmall: TextStyle(
              fontSize: 14,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold),
          labelMedium: TextStyle(
              color: Colors.black54, fontSize: 22, fontWeight: FontWeight.w500),
          labelSmall: TextStyle(
              fontSize: 16,
              color: Colors.white24,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white24),
          headlineMedium: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500)));

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: const Color(0xFF31315C),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.black12,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(width: 3, color: Colors.cyanAccent),
      ),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color(0xFF31315C),
    ),
    dialogBackgroundColor: Colors.indigo[400],
    primaryColor: Colors.white24,
    textTheme: const TextTheme(
        headlineSmall: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white54),
        titleSmall: TextStyle(fontSize: 16, color: Colors.white70),
        titleMedium: TextStyle(fontSize: 18, color: Colors.white70),
        bodySmall: TextStyle(
            fontSize: 14,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold),
        labelMedium: TextStyle(
            color: Colors.white54, fontSize: 22, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
            fontSize: 16,
            color: Colors.white24,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white24),
        headlineMedium: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500)),
  );
}
