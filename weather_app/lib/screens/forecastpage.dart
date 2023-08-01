import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/date_time_formatter.dart';
import 'package:weather_app/controller/weather_controller.dart';

class ForecastPage extends StatelessWidget {
  ForecastPage({super.key});

  WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.cyan, Colors.indigo])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(children: [
            Image.asset('assets/images/left_arrow_logo.png', scale: 1.5),
            SizedBox(width: 10),
            Text('Back', style: TextStyle(fontSize: 22, color: Colors.white))
          ]),
          actions: [
            Image.asset('assets/images/settings_logo.png', scale: 1.5),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                          DateTimeFormat.dateFormatter(controller
                                  .weatherForecast
                                  .value
                                  .forecast
                                  ?.forecastday?[0]
                                  .date ??
                              ''),
                          style: const TextStyle(
                              fontSize: 24, color: Colors.white))
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                    controller.weatherForecast.value.forecast
                                            ?.forecastday?[0].hour?[index].tempC
                                            .toString() ??
                                        '',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white)),
                                Image.network(
                                    controller
                                            .weatherForecast
                                            .value
                                            .forecast
                                            ?.forecastday?[0]
                                            .hour?[index]
                                            .condition
                                            ?.icon ??
                                        'assets/images/img_1.png',
                                    scale: 1.1),
                                Text(
                                    DateTimeFormat.timeFormatter(controller
                                            .weatherForecast
                                            .value
                                            .forecast
                                            ?.forecastday?[0]
                                            .hour?[index]
                                            .time ??
                                        ''),
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white)),
                              ],
                            ),
                          )),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                  child: Text(
                    'Next Forecast',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  DateTimeFormat.dateFormatter(controller
                                          .weatherForecast
                                          .value
                                          .forecast
                                          ?.forecastday?[index]
                                          .date ??
                                      ''),
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white)),
                              Image.network(
                                  controller
                                          .weatherForecast
                                          .value
                                          .forecast
                                          ?.forecastday?[index]
                                          .day
                                          ?.condition
                                          ?.icon ??
                                      'assets/images/img_1.png',
                                  scale: 1.1),
                              Text(
                                  controller.weatherForecast.value.forecast
                                          ?.forecastday?[index].day?.avgtempC
                                          .toString() ??
                                      '',
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white)),
                            ],
                          ),
                        )),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.light_mode, size: 30, color: Colors.white),
                    SizedBox(width: 10),
                    Text('AccuWeather',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
