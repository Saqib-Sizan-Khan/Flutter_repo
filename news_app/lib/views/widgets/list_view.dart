import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import 'containers.dart';
import 'images.dart';
import 'tags.dart';

NewsController controller = Get.put(NewsController());

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    controller.getNewsCategory(category);
    return Obx(() => controller.isLoading.value
        ? SizedBox(
            height: 400.h,
            child: const Center(child: CircularProgressIndicator()))
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
                      '',
                  newsTime: controller.categoryNewsModel.value.articles[index]
                          .publishedAt ??
                      '');
            },
            separatorBuilder: (context, index) =>
                Divider(thickness: 2, color: Colors.black.withOpacity(0.2))));
  }
}

class SpotlightNewsListView extends StatelessWidget {
  const SpotlightNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Spotlight',
              style:
                  TextStyle(fontSize: 17.spMax, fontWeight: FontWeight.w400)),
          SizedBox(height: 10.h),
          SizedBox(
              height: 219.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.generalNewsModel?.articles.length ?? 0,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          width: 154.w,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: netWallPaper(controller.generalNewsModel
                                      ?.articles[index].urlToImage ??
                                  ''),
                              borderRadius: BorderRadius.circular(10.r)),
                        ),
                        Container(
                          width: 154.w,
                          height: 219.h,
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          decoration: ShapeDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: [Color(0x00D9D9D9), Colors.black]),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const NewsTags(
                                  tagName: 'General',
                                  textColor: Color(0xFFFFFFFF)),
                              Text(
                                controller.generalNewsModel?.articles[index]
                                        .title ??
                                    '',
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  })),
          SizedBox(height: 10.h),
          Divider(color: Colors.black.withOpacity(0.2))
        ],
      ),
    );
  }
}

class NewsListView2 extends StatelessWidget {
  const NewsListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text("Sports",
              style:
                  TextStyle(fontSize: 17.spMax, fontWeight: FontWeight.w400)),
        ),
        ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            itemCount: controller.sportsNewsModel?.articles.length ?? 0,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
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
              style:
                  TextStyle(fontSize: 17.spMax, fontWeight: FontWeight.w400)),
          SizedBox(height: 10.h),
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
                          width: 400.w,
                          height: 250.h,
                          decoration: ShapeDecoration(
                              image: wallPaper('fload.png'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                        Container(
                          width: 400.w,
                          height: 250.h,
                          decoration: ShapeDecoration(
                              color: Colors.black.withOpacity(0.6),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                        const Positioned(
                            top: 1,
                            right: 1,
                            left: 1,
                            bottom: 1,
                            child: Logo(name: 'play_logo.png', scale: 2))
                      ],
                    ),
                    SizedBox(height: 10.h),
                    const NewsTags(tagName: 'International'),
                    SizedBox(height: 5.h),
                    Text(
                        '70 people died in floods in Assam, more than 3 million people are homeless',
                        style: TextStyle(
                            fontSize: 15.spMax, fontWeight: FontWeight.w400)),
                    SizedBox(height: 5.h),
                    Text('10 minutes ago',
                        style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xFF494949))),
                    SizedBox(height: 20.h),
                  ],
                );
              })
        ],
      ),
    );
  }
}
