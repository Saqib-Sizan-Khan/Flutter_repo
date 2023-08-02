import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screens/forecastpage.dart';
import 'package:weather_app/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Container(
          child: Scaffold(
            appBar: AppBar(
                toolbarHeight: 10,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [Colors.indigo, Colors.cyan])),
                ),
                elevation: 0.0,
                bottom: TabBar(
                    indicatorWeight: 3,
                    indicatorColor: Colors.tealAccent,
                    tabs: [
                      Tab(child: Image.asset('assets/images/img.png')),
                      Tab(child: Image.asset('assets/images/forecast.png')),
                    ])),
            body: TabBarView(
              children: [HomePage(), ForecastPage()],
            ),
          ),
        ),
      ),
    );
  }
}
