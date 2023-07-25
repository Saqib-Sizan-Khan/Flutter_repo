import 'package:dart_core/weather_app/weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationUI extends StatelessWidget {
  LocationUI({super.key});

  WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            controller.getLocationWeather();
          },
          child: Text('Get Location Weather'),
        ),
      )
    );
  }
}
