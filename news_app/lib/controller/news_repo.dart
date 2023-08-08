import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/model/news_model.dart';

class NewsControlller extends GetxController {
  NewsModel? businessNewsModel;
  NewsModel? generalNewsModel;
  NewsModel? sportsNewsModel;

  @override
  void onInit() {
    getBusinessNews();
    getGeneralNews();
    getSportsNews();
    super.onInit();
  }

  getBusinessNews() async {
    String apiKey = 'fb518449a4ad4bb68cb27422328b4120';
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      businessNewsModel = NewsModel.fromJson(jsonResponse);
    } else {
      throw Exception('Falied to get news');
    }
  }

  getGeneralNews() async {
    String apiKey = 'fb518449a4ad4bb68cb27422328b4120';
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      generalNewsModel = NewsModel.fromJson(jsonResponse);
    } else {
      throw Exception('Falied to get news');
    }
  }

  getSportsNews() async {
    String apiKey = 'fb518449a4ad4bb68cb27422328b4120';
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      sportsNewsModel = NewsModel.fromJson(jsonResponse);
    } else {
      throw Exception('Falied to get news');
    }
  }
}
