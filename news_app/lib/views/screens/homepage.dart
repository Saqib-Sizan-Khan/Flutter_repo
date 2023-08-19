import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import '../widgets/containers.dart';
import '../widgets/list_view.dart';
import '../widgets/news_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final NewsController controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NewsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BreakingNewsCon(),
            const Divider(color: Colors.black, indent: 8, endIndent: 8),
            const NewsListView(category: 'Business'),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: OrdinaryNewsCon(
                    image: controller.generalNewsModel?.articles[5].urlToImage ?? '',
                    newsTag: 'General',
                    headline: controller.generalNewsModel?.articles[5].title ?? '',
                    subHeadline: controller.generalNewsModel?.articles[5].description ?? '')),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: OrdinaryNewsCon(
                    image: controller.generalNewsModel?.articles[4].urlToImage ?? '',
                    newsTag: 'General',
                    headline: controller.generalNewsModel?.articles[4].title ?? '',
                    subHeadline: controller.generalNewsModel?.articles[4].description ?? '')),
            const SpotlightNewsListView(),
            const NewsListView2(),
            const VideoListView()
          ],
        ),
      ),
    );
  }
}
