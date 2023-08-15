import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import 'containers.dart';
import 'images.dart';
import 'tags.dart';

NewsControlller controller = Get.put(NewsControlller());

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    controller.getNewsCategory(category);
    return Obx(() => controller.isLoading.value
        ? const SizedBox(
            height: 500, child: Center(child: CircularProgressIndicator()))
        : ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            itemCount: controller.categoryNewsModel.value.articles.length,
            itemBuilder: (context, index) {
              return SmallNewsCon(
                  image: controller
                          .categoryNewsModel.value.articles[index].urlToImage ??
                      '',
                  tag: category,
                  headline: controller
                          .categoryNewsModel.value.articles[index].title ??
                      '');
            },
            separatorBuilder: (context, index) =>
                Divider(thickness: 1, color: Colors.black.withOpacity(0.2))));
  }
}

class SpotlightNewsListView extends StatelessWidget {
  SpotlightNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Spotlight',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
          SizedBox(height: 10),
          Container(
              height: 219,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.generalNewsModel?.articles.length ?? 0,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          width: 154,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: NetWallPaper(controller.generalNewsModel
                                      ?.articles[index].urlToImage ??
                                  ''),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          width: 154,
                          height: 219,
                          padding: EdgeInsets.only(left: 10, bottom: 10),
                          decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: [Color(0x00D9D9D9), Colors.black]),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NewsTags(
                                  tagName: 'General',
                                  textColor: const Color(0xFFFFFFFF)),
                              Text(
                                controller.generalNewsModel?.articles[index]
                                        .title ??
                                    '',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  })),
          SizedBox(height: 10),
          Divider(color: Colors.black.withOpacity(0.1))
        ],
      ),
    );
  }
}

class NewsListView2 extends StatelessWidget {
  NewsListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text("Sports",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
        ),
        ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            itemCount: controller.sportsNewsModel?.articles.length ?? 0,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  OrdinaryNewsCon(
                      image: controller
                              .sportsNewsModel?.articles[index].urlToImage ??
                          '',
                      newsTag: 'Sports',
                      headline:
                          controller.sportsNewsModel?.articles[index].title ??
                              ''),
                  SmallNewsCon2(
                      image: controller
                              .sportsNewsModel?.articles[index].urlToImage ??
                          '',
                      description: controller
                              .sportsNewsModel?.articles[index].description ??
                          '')
                ],
              );
            }),
      ],
    );
  }
}

class VideoListView extends StatelessWidget {
  const VideoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Video',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
          SizedBox(height: 10),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 358,
                          height: 197,
                          decoration: ShapeDecoration(
                              image: wallPaper('fload.png'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                        Container(
                          width: 358,
                          height: 197,
                          decoration: ShapeDecoration(
                              color: Colors.black.withOpacity(0.6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                        Positioned(
                            top: 1,
                            right: 1,
                            left: 1,
                            bottom: 1,
                            child: Logo(name: 'play_logo.png', scale: 2))
                      ],
                    ),
                    SizedBox(height: 10),
                    NewsTags(tagName: 'International'),
                    SizedBox(height: 5),
                    Text(
                        '70 people died in floods in Assam, more than 3 million people are homeless',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    SizedBox(height: 5),
                    Text('10 minutes ago',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF494949))),
                    SizedBox(height: 20),
                  ],
                );
              })
        ],
      ),
    );
  }
}
