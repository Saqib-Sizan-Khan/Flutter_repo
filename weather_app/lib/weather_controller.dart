import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/forecast_model.dart';
import 'package:weather_app/weather_model.dart';
import 'package:intl/intl.dart';

class WeatherController extends GetxController {
  //Position? position;
  RxString selectedCity = 'Dhaka'.obs;
  RxString locationName = ''.obs;
  RxString temperature = ''.obs;
  RxString condition = ''.obs;
  RxString icon = ''.obs;
  RxString wind = ''.obs;
  RxString humidity = ''.obs;
  RxString weatherTime = ''.obs;

  MyForecastModel? weatherForecast;

  var cityList = [
    'Sylhet',
    'Dhaka',
    'Khulna',
    'Chittagong',
    'Rajshahi',
    'Barishal'
  ];

  @override
  void onInit() {
    //getCurrentLocation();
    //getCurrentPosition();
    //getLocationWeather(selectedCity.value);
    getForecastWeather();
    super.onInit();
  }

  void citySelect(String newCity) {
    selectedCity.value = newCity;
    getLocationWeather(selectedCity.value);
  }

  getLocationWeather(String city) async {
    String apiKey = '4e735fb780e747dd83c45255232707';
    final response = await http.get(Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$city&aqi=no'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      DateTime wt = DateTime.parse(json['current']['last_updated']);

      locationName.value = json['location']['name'];
      temperature.value = json['current']['temp_c'].toString();
      condition.value = json['current']['condition']['text'];
      icon.value = json['current']['condition']['icon'];
      wind.value = json['current']['wind_kph'].toString();
      humidity.value = json['current']['humidity'].toString();
      weatherTime.value = DateFormat('d MMMM').format(wt);
    } else {
      throw Exception('Weather not found');
    }
  }

  getForecastWeather() async {
    String apiKey = '4e735fb780e747dd83c45255232707';
    final resonse = await http.get(Uri.parse(
        'http://api.weatherapi.com/v1/forecast.json?key=4e735fb780e747dd83c45255232707&q=Dhaka&days=10&aqi=no&alerts=no'));

    if (resonse.statusCode == 200) {
      final json = jsonDecode(resonse.body);
      weatherForecast = MyForecastModel.fromJson(json);

      DateTime ft =
          DateTime.parse(weatherForecast?.forecast?.forecastday?[0].date ?? '');
      String forecatDate = DateFormat('MMMM d').format(ft);
      print(weatherForecast?.forecast?.forecastday?.length);
    }
  }

  String dateFormatter(String dateTime) {
    if (dateTime != '') {
      DateTime ft = DateTime.parse(dateTime);
      String forecastDate = DateFormat('MMMM d').format(ft);
      return forecastDate;
    }
    return '';
  }

  String timeFormatter(String dateTime) {
    if (dateTime != '') {
      DateTime ft = DateTime.parse(dateTime);
      String forecastDate = DateFormat.jm().format(ft);
      return forecastDate;
    }
    return '';
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
}
