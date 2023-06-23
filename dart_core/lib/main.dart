import 'package:dart_core/API_Calling/app_UI/photos_app.dart';
import 'package:dart_core/API_Calling/app_UI/products_info_app.dart';
import 'package:dart_core/API_Calling/app_UI/user_details_app.dart';
import 'package:flutter/material.dart';
import 'Local_JSON_Data/user_interface.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Photo_UI(),
    );
  }
}
