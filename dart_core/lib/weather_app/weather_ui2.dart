import 'package:flutter/material.dart';

class WeatherUI2 extends StatelessWidget {
  const WeatherUI2({super.key});

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
                        Image.asset('assets/images/left_arrow_logo.png',
                            scale: 1.5),
                        SizedBox(width: 10),
                        Text(
                          'Back',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    Image.asset('assets/images/settings_logo.png', scale: 1.5),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
              )),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      ))),
          Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Forecast',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 350,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sep, 13',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white)),
                                    Image.asset('assets/images/img_1.png',
                                        scale: 1.6),
                                    Text('21°C',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white)),
                                  ],
                                ),
                              )),
                    ),
                    SizedBox(height: 20),
                    Row(
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
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
