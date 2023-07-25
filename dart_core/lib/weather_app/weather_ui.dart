import 'dart:ui';

import 'package:dart_core/weather_app/weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeatherUIHome extends StatelessWidget {
  WeatherUIHome({super.key});

  WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A98FA),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      verticalDirection: VerticalDirection.up,
                      children: [
                        InkWell(
                          child: Image.asset('assets/images/location_logo.png',
                              scale: 1.5),
                          onTap: () {
                            controller.getLocationWeather();
                          },
                        ),
                        SizedBox(width: 20),
                        Text(
                          controller.location_name,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(width: 20),
                        Image.asset('assets/images/down_arrow_logo.png',
                            scale: 1.3),
                      ],
                    ),
                    Image.asset('assets/images/notification_logo.png',
                        scale: 1.5),
                  ],
                ),
              )),
          Expanded(
            flex: 2,
            child: Container(
              width: 200,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(controller.icon),
                      fit: BoxFit.contain)),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 350,
              margin: EdgeInsets.only(bottom: 150),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Today, ${controller.weatherTime}',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('${controller.temparture}℃',
                      style: TextStyle(fontSize: 70, color: Colors.white)),
                  Text(controller.condition,
                      style: TextStyle(fontSize: 28, color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.water, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Text('Wind',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      VerticalDivider(),
                      Text('|',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      VerticalDivider(),
                      Text('15 km/h',
                          style: TextStyle(fontSize: 20, color: Colors.white))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.water, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Text('Hum',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      VerticalDivider(),
                      Text('|',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      VerticalDivider(),
                      Text('26%',
                          style: TextStyle(fontSize: 20, color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
