import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import '../widgets/containers.dart';
import '../widgets/list_view.dart';
import '../widgets/news_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  NewsController controlller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BreakingNewsCon(),
            Divider(
                color: Colors.black.withOpacity(0.1),
                indent: 16,
                endIndent: 16),
            NewsListView(category: 'Business'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: OrdinaryNewsCon(
                image: controlller.generalNewsModel?.articles[5].urlToImage ?? '',
                newsTag: 'General',
                headline: controlller.generalNewsModel?.articles[5].title ?? '',
                subHeadline: controlller.generalNewsModel?.articles[5].description ?? '',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: OrdinaryNewsCon(
                image: controlller.generalNewsModel?.articles[4].urlToImage ?? '',
                newsTag: 'General',
                headline: controlller.generalNewsModel?.articles[4].title ?? '',
                subHeadline: controlller.generalNewsModel?.articles[4].description ?? '',
              ),
            ),
            SpotlightNewsListView(),
            NewsListView2(),
            VideoListView()
          ],
        ),
      ),
    );
  }
}
