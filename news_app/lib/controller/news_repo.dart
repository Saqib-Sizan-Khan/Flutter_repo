import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:news_app/model/news_model.dart';

class NewsController extends GetxController {
  RxBool isLoading = false.obs;
  NewsModel? businessNewsModel;
  NewsModel? generalNewsModel;
  NewsModel? sportsNewsModel;
  NewsModel? headlinesModel;
  Rx<NewsModel> categoryNewsModel = NewsModel(status: '', totalResults: 0, articles: []).obs;

  @override
  void onInit() async {
    headlinesModel =
        await getNewsData('https://newsapi.org/v2/top-headlines?country=us');
    sportsNewsModel = await getNewsData(
        'https://newsapi.org/v2/top-headlines?country=us&category=sports');
    generalNewsModel = await getNewsData(
        'https://newsapi.org/v2/top-headlines?country=us&category=general');
    businessNewsModel = await getNewsData(
        'https://newsapi.org/v2/top-headlines?country=us&category=business');
    super.onInit();
  }

  getNewsCategory (String category) async {
    String url = 'https://newsapi.org/v2/top-headlines?country=us&category=$category';
    categoryNewsModel.value = await getNewsData(url);
  }

  Future<NewsModel> getNewsData(String url) async {
    isLoading.value = true;
    String apiKey = 'fb518449a4ad4bb68cb27422328b4120';
    final response = await http.get(Uri.parse('$url&apiKey=$apiKey'));
    isLoading.value = false;

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      return NewsModel.fromJson(jsonResponse);
    } else {
      throw Exception('Falied to get news');
    }
  }
}
