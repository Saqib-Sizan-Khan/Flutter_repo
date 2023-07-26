import 'dart:convert';
import 'package:dart_core/weather_app/weather_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class WeatherController extends GetxController {

  //Position? position;
  String locationName = '';
  String temperature = '';
  String condition = '';
  String icon = '';
  String weatherTime = '';
  String wind = '';
  String humidity = '';

  @override
  void onInit() {
    //getCurrentLocation();
    //getCurrentPosition();
    getLocationWeather();
    super.onInit();
  }

  // getCurrentLocation() async {
  //   await Geolocator.requestPermission();
  //
  //   Future<Position> _determinePosition() async {
  //     bool serviceEnabled;
  //     LocationPermission permission;
  //
  //     serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //     if (!serviceEnabled) {
  //       return Future.error('Location services are disabled.');
  //     }
  //
  //     permission = await Geolocator.checkPermission();
  //     if (permission == LocationPermission.denied) {
  //       permission = await Geolocator.requestPermission();
  //       if (permission == LocationPermission.denied) {
  //         return Future.error('Location permissions are denied');
  //       }
  //     }
  //
  //     if (permission == LocationPermission.deniedForever) {
  //       return Future.error(
  //           'Location permissions are permanently denied, we cannot request permissions.');
  //     }
  //
  //     return await Geolocator.getCurrentPosition();
  //   }
  // }
  //
  // getCurrentPosition () async {
  //   position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
  //   print(position);
  // }

  getLocationWeather() async {
    String apiKey = '569196186da344bb85e91236232507';
    final response = await http.get(Uri.parse('http://api.weatherapi.com/v1/current.json?key=$apiKey&q=Dhaka&aqi=no'));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);



      locationName = jsonResponse['location']['name'];
      temperature = jsonResponse['current']['temp_c'].toString();
      condition = jsonResponse['current']['condition']['text'];
      icon = jsonResponse['current']['condition']['icon'];
      wind = jsonResponse['current']['wind_kph'].toString();
      humidity = jsonResponse['current']['humidity'].toString();

      DateTime wt = DateTime.parse(jsonResponse['current']['last_updated']);
      weatherTime = DateFormat('d MMMM').format(wt);
    }
    else {
      throw Exception('Weather not found');
    }
  }
}