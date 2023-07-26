import 'package:dart_core/API_Calling/app_UI/photos_app.dart';
import 'package:dart_core/API_Calling/app_UI/products_info_app.dart';
import 'package:dart_core/API_Calling/app_UI/user_details_app.dart';
import 'package:dart_core/weather_app/show_location.dart';
import 'package:dart_core/weather_app/weather_homepage.dart';
import 'package:dart_core/weather_app/weather_ui2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Local_JSON_Data/user_interface.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherUIHome(),
    );
  }
}
