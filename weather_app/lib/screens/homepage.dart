import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/date_time_formatter.dart';
import 'package:weather_app/controller/weather_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.blueAccent, Colors.redAccent]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
                        children: [
                          Image.asset('assets/images/location_logo.png',
                              scale: 1.2),
                          const SizedBox(width: 10),
                          Obx(() => DropdownButton(
                              onChanged: (String? newCity) {
                                controller.changeLocation(newCity!);
                              },
                              value: controller.selectedCity.value,
                              style: const TextStyle(
                                  fontSize: 24, color: Colors.white),
                              dropdownColor: Colors.indigo,
                              items: controller.cityList.map((String city) {
                                return DropdownMenuItem(
                                    value: city, child: Text(city));
                              }).toList())),
                        ],
                      ),
                      Image.asset('assets/images/notification_logo.png',
                          scale: 1.3),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Obx(() => Container(
                      width: 200,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  controller.weatherForecast.value.current
                                          ?.condition?.icon ??
                                      'assets/images/img_1.png',
                                  scale: 0.4),
                              fit: BoxFit.scaleDown)),
                    ))),
            Expanded(
              flex: 4,
              child: Obx(() => Container(
                    width: 350,
                    margin: const EdgeInsets.only(bottom: 150),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            'Today, ${DateTimeFormat.dateFormatter(controller.weatherForecast.value.current?.lastUpdated ?? '')}',
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white)),
                        Text(
                            '${controller.weatherForecast.value.current?.tempC ?? ''}℃',
                            style: const TextStyle(
                                fontSize: 62, color: Colors.white)),
                        Text(
                            controller.weatherForecast.value.current?.condition
                                    ?.text ??
                                '',
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white)),
                        SizedBox(
                            width: 200,
                            height: 80,
                            child: Row(
                              children: [
                                const Column(
                                  children: [
                                    Icon(Icons.air_outlined,
                                        color: Colors.white, size: 30),
                                    SizedBox(height: 10),
                                    Icon(Icons.water_drop,
                                        color: Colors.white, size: 30),
                                  ],
                                ),
                                const SizedBox(width: 5),
                                const Column(
                                  children: [
                                    Text('Wind',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                    SizedBox(height: 20),
                                    Text('Hum',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                  ],
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  children: [
                                    Text('|',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                    SizedBox(height: 20),
                                    Text('|',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        '${controller.weatherForecast.value.current?.windKph ?? ''} km/h',
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.white)),
                                    const SizedBox(height: 20),
                                    Text(
                                        '${controller.weatherForecast.value.current?.humidity ?? ''}%',
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.white))
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
