import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/weather_controller.dart';

class WeatherUIHome extends StatelessWidget {
  WeatherUIHome({super.key});

  WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4A98FA),
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
                        Image.asset('assets/images/location_logo.png',
                            scale: 1.5),
                        const SizedBox(width: 20),
                        Text(
                          controller.weather?['locationName'] ?? '',
                          style: const TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(width: 20),
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
                      image: NetworkImage(controller.weather?['icon'] ?? ''),
                      fit: BoxFit.contain)),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: 350,
              margin: const EdgeInsets.only(bottom: 150),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Today, ${controller.weather?['weatherTime'] ?? ''}',
                      style: const TextStyle(fontSize: 24, color: Colors.white)),
                  Text('${controller.weather?['temperature'] ?? ''}℃',
                      style: const TextStyle(fontSize: 70, color: Colors.white)),
                  Text(controller.weather?['condition'] ?? '',
                      style: const TextStyle(fontSize: 28, color: Colors.white)),

                  SizedBox(
                      width: 200,
                      height: 80,
                      child: Row(
                        children: [
                          const Column(
                            children: [
                              Icon(Icons.air_outlined, color: Colors.white, size: 30),
                              SizedBox(height: 10),
                              Icon(Icons.water_drop, color: Colors.white, size: 30),
                            ],
                          ),

                          const SizedBox(width: 5),

                          const Column(
                            children: [
                              Text('Wind', style: TextStyle(fontSize: 20, color: Colors.white)),
                              SizedBox(height: 20),
                              Text('Hum', style: TextStyle(fontSize: 20, color: Colors.white)),
                            ],
                          ),

                          const SizedBox(width: 10),

                          const Column(
                            children: [
                              Text('|', style: TextStyle(fontSize: 20, color: Colors.white)),
                              SizedBox(height: 20),
                              Text('|', style: TextStyle(fontSize: 20, color: Colors.white)),
                            ],
                          ),
                          const SizedBox(width: 10),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${controller.weather?['wind'] ?? ''} km/h', style: const TextStyle(fontSize: 20, color: Colors.white)),
                              const SizedBox(height: 20),
                              Text('${controller.weather?['humidity'] ?? ''}%', style: const TextStyle(fontSize: 20, color: Colors.white))
                            ],
                          ),

                        ],
                      )
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
