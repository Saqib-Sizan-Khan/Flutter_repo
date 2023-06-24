import 'package:flutter/material.dart';
import 'package:test_etl1/WhatsApp_UI/wp_UI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green.shade900
      ),
      debugShowCheckedModeBanner: false,
      home: WP_UI(),
    );
  }
}
