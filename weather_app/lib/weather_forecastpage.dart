import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/weather_controller.dart';

class WeatherForecast extends StatelessWidget {
  WeatherForecast({super.key});

  WeatherController controller = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {

    var forecast = controller.weatherForecast?.forecast;
    return Scaffold(
      backgroundColor: Color(0xFF4A98FA),
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
                    Text(
                      'Today',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text('Sep, 12',
                        style: TextStyle(fontSize: 24, color: Colors.white))
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
                          Text('22°C',
                              style: TextStyle(
                                  fontSize: 22, color: Colors.white)),
                          Image.asset('assets/images/img_1.png'),
                          Text('16.00',
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
                        Text(controller.dateFormatter(forecast?.forecastday?[index].date ?? ''),
                            style: TextStyle(
                                fontSize: 22, color: Colors.white)),
                        Image.network('${forecast?.forecastday?[index].day?.condition?.icon ?? ''}', scale: 1.6),
                        Text(forecast?.forecastday?[index].day?.avgtempC.toString() ?? '',
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
    );
  }
}