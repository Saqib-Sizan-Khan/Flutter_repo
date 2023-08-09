import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/date_time_formatter.dart';
import 'package:weather_app/controller/weather_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  WeatherController controller = Get.put(WeatherController());
  TextEditingController controllerCity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueAccent, Colors.redAccent])),
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
                      Image.asset('assets/images/location_logo.png',
                          scale: 1.6.sp),
                      InkWell(
                        onTap: () {
                          Get.bottomSheet(
                              Padding(
                                padding: const EdgeInsets.all(24),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Enter City Name',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600)),
                                    const SizedBox(height: 15),
                                    TextField(
                                      controller: controllerCity,
                                      keyboardType: TextInputType.text,
                                      style: const TextStyle(fontSize: 20),
                                      decoration: InputDecoration(
                                          hintText: 'London',
                                          hintStyle:
                                              const TextStyle(fontSize: 18),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  width: 3,
                                                  color: Colors.indigo)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  width: 3,
                                                  color: Colors.teal)),
                                          prefixIcon: const Icon(
                                            Icons.location_city_outlined,
                                            color: Colors.white,
                                            size: 25,
                                          )),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  controller.changeLocation(
                                                      controllerCity.text);
                                                  controllerCity.clear();
                                                  Get.back();
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white,
                                                    padding: const EdgeInsets
                                                        .all(20),
                                                    elevation: 20,
                                                    side: const BorderSide(
                                                        width: 2,
                                                        color: Colors.teal),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                child: const Text('Select',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.teal)))),
                                        const SizedBox(width: 10),
                                        Expanded(
                                            flex: 1,
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  controllerCity.clear();
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.white,
                                                    padding: const EdgeInsets
                                                        .all(20),
                                                    elevation: 20,
                                                    side: const BorderSide(
                                                        width: 2,
                                                        color: Colors.red),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                child: const Text('Clear',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.red))))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              backgroundColor: const Color(0xFF7FC2F4),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30))));
                        },
                        child: Obx(() => Text(controller.selectedCity.value,
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white))),
                      ),
                      Image.asset('assets/images/notification_logo.png',
                          scale: 1.8.sp),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Obx(() => Image.network(
                      controller
                              .weatherForecast.value.current?.condition?.icon ??
                          'assets/images/img_1.png',
                      scale: 0.5.sp,
                    ))),
            Expanded(
              flex: 4,
              child: Obx(() => Container(
                    width: 350.w,
                    margin: const EdgeInsets.only(bottom: 150),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                            'Today, ${DateTimeFormat.dateFormatter(controller.weatherForecast.value.current?.lastUpdated ?? '')}',
                            style: TextStyle(
                                fontSize: 24.sp, color: Colors.white)),
                        Text(
                            '${controller.weatherForecast.value.current?.tempC ?? ''}℃',
                            style: TextStyle(
                                fontSize: 62.sp, color: Colors.white)),
                        Text(
                            controller.weatherForecast.value.current?.condition
                                    ?.text ??
                                '',
                            style: TextStyle(
                                fontSize: 24.sp, color: Colors.white)),
                        SizedBox(
                            width: 200.w,
                            height: 80.h,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.air_outlined,
                                        color: Colors.white, size: 30.sp),
                                    SizedBox(height: 10.h),
                                    Icon(Icons.water_drop,
                                        color: Colors.white, size: 30.sp),
                                  ],
                                ),
                                SizedBox(width: 5.w),
                                Column(
                                  children: [
                                    Text('Wind',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white)),
                                    SizedBox(height: 20.h),
                                    Text('Hum',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white)),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  children: [
                                    Text('|',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white)),
                                    SizedBox(height: 20.h),
                                    Text('|',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white)),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        '${controller.weatherForecast.value.current?.windKph ?? ''} km/h',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white)),
                                    SizedBox(height: 20.h),
                                    Text(
                                        '${controller.weatherForecast.value.current?.humidity ?? ''}%',
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            color: Colors.white))
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
