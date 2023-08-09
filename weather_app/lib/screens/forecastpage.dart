import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              colors: [Colors.blue, Colors.redAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 80.h,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            '${controller.selectedCity.value} Forecast',
            style: TextStyle(fontSize: 24.sp),
          ),
          actions: [
            Image.asset('assets/images/settings_logo.png', scale: 1.8.sp),
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
                      Text(
                        'Today',
                        style: TextStyle(
                            fontSize: 32.sp,
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
                          style:
                              TextStyle(fontSize: 24.sp, color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.h,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            width: 110.w,
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
                                        fontSize: 22.sp, color: Colors.white)),
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
                                    scale: 1.3.sp),
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
                                        fontSize: 22.sp, color: Colors.white)),
                              ],
                            ),
                          )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Text(
                    'Next Forecast',
                    style: TextStyle(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                      fontSize: 22.sp, color: Colors.white)),
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
                                  scale: 1.2.sp),
                              Text(
                                  controller.weatherForecast.value.forecast
                                          ?.forecastday?[index].day?.avgtempC
                                          .toString() ??
                                      '',
                                  style: TextStyle(
                                      fontSize: 22.sp, color: Colors.white)),
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
