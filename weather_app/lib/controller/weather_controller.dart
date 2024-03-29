import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/forecast_model.dart';

class WeatherController extends GetxController {
  Position? position;
  RxString selectedCity = ''.obs;
  Rx<MyForecastModel> weatherForecast = MyForecastModel().obs;

  @override
  void onInit() {
    getCurrentLocation();
    getCurrentLocationWeather();
    super.onInit();
  }

  getCurrentLocationWeather() async {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    double? lat = position?.latitude;
    double? lon = position?.longitude;

    String apiKey = '4e735fb780e747dd83c45255232707';
    final response = await http.get(Uri.parse(
        'https://api.weatherapi.com/v1/current.json?key=$apiKey&q=$lat,$lon&aqi=no'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      String locationName = json['location']['name'];
      changeLocation(locationName);
    }
  }

  getForecastWeather(String city) async {
    String apiKey = '4e735fb780e747dd83c45255232707';
    final response = await http.get(Uri.parse(
        'http://api.weatherapi.com/v1/forecast.json?key=$apiKey&q=$city&days=10&aqi=no&alerts=no'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      weatherForecast.value = MyForecastModel.fromJson(json);
    }
  }

  void changeLocation(String newCity) {
    selectedCity.value = newCity;
    getForecastWeather(selectedCity.value);
  }

  getCurrentLocation() async {
    await Geolocator.requestPermission();

    Future<Position> _determinePosition() async {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      return await Geolocator.getCurrentPosition();
    }
  }
}
