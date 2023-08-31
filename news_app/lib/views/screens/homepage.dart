import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import '../widgets/containers.dart';
import '../widgets/list_view.dart';
import '../widgets/news_app_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final NewsController controller = Get.put(NewsController());
  int i = 2;

  @override
  Widget build(BuildContext context) {
    controller.headlinesModel?.articles[i].title == null ? i++ : i = 2;
    return Scaffold(
      appBar: const NewsAppBar(),
      body: SingleChildScrollView(
        child: Obx(() => Column(
              children: [
                BreakingNewsCon(),
                const Divider(color: Colors.black, indent: 8, endIndent: 8),
                const NewsListView(category: 'Business'),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: controller.isLoading.value
                        ? const Center(child: CircularProgressIndicator())
                        : OrdinaryNewsCon(
                            image: controller.headlinesModel?.articles[i].urlToImage ?? '',
                            newsTag: 'HeadLine',
                            headline: controller.headlinesModel?.articles[i].title ?? '',
                            subHeadline: controller.headlinesModel?.articles[i].description ?? '')),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: controller.isLoading.value
                        ? const Center(child: CircularProgressIndicator())
                        : OrdinaryNewsCon(
                        image: controller.headlinesModel?.articles[i + 1].urlToImage ?? '',
                        newsTag: 'HeadLine',
                        headline: controller.headlinesModel?.articles[i + 1].title ?? '',
                        subHeadline: controller.headlinesModel?.articles[i + 1].description ??
                            '')),
                const SpotlightNewsListView(),
                const NewsListView2(),
                const VideoListView()
              ],
            )),
      ),
    );
  }
}
