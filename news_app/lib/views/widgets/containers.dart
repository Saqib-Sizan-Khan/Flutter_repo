import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import 'package:news_app/controller/time_converter.dart';
import 'images.dart';
import 'tags.dart';

class BreakingNewsCon extends StatelessWidget {
  BreakingNewsCon({super.key});

  final NewsController controller = Get.put(NewsController());
  int i = 0;

  @override
  Widget build(BuildContext context) {
    controller.headlinesModel?.articles[i].title == null ? i++ : i = 0;
    int newsDuration =
        timeConverter(controller.headlinesModel?.articles[i].publishedAt);
    return Column(children: [
      Container(
          height: 250.h,
          decoration: BoxDecoration(
              image: netWallPaper(
                  controller.headlinesModel?.articles[i].urlToImage ?? ''))),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const NewsTags(
                    tagName: 'Breaking News', textColor: Color(0xFFF1582C)),
                SizedBox(width: 5.w),
                const NewsTags(tagName: 'National'),
              ],
            ),
            SizedBox(height: 5.h),
            Text(controller.headlinesModel?.articles[i].title ?? '',
                style:
                    TextStyle(fontSize: 17.spMax, fontWeight: FontWeight.w400)),
            SizedBox(height: 3.h),
            Text(controller.headlinesModel?.articles[i].description ?? '',
                style:
                    TextStyle(fontSize: 11.spMax, fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify),
            SizedBox(height: 3.h),
            Text('$newsDuration day ago',
                style: TextStyle(
                    fontSize: 9.spMax,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF494949))),
          ]))
    ]);
  }
}

class OrdinaryNewsCon extends StatelessWidget {
  const OrdinaryNewsCon(
      {super.key,
      required this.image,
      required this.newsTag,
      required this.headline,
      this.subHeadline = ''});

  final String image;
  final String newsTag;
  final String headline;
  final String subHeadline;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 200.h,
          decoration: ShapeDecoration(
              image: netWallPaper(image),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r))),
        ),
        SizedBox(height: 10.h),
        NewsTags(tagName: newsTag),
        SizedBox(height: 5.h),
        Text(headline,
            style: TextStyle(fontSize: 15.spMax, fontWeight: FontWeight.w400)),
        SizedBox(height: 3.h),
        Text(subHeadline,
            style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w300),
            textAlign: TextAlign.justify),
        SizedBox(height: 3.h),
        Text('40 minutes ago',
            style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w300,
                color: const Color(0xFF494949))),
        Divider(color: Colors.black.withOpacity(0.2))
      ])
    ]);
  }
}

class SmallNewsCon extends StatelessWidget {
  const SmallNewsCon(
      {super.key,
      required this.image,
      required this.tag,
      required this.headline,
      required this.newsTime});

  final String image;
  final String tag;
  final String headline;
  final String newsTime;

  @override
  Widget build(BuildContext context) {
    int newsDuration = timeConverter(newsTime);
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 140.w,
          height: 150.h,
          decoration: ShapeDecoration(
              image: netWallPaper(image),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r)))),
      SizedBox(width: 10.w),
      SizedBox(
          width: 210.w,
          height: 150.h,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            NewsTags(tagName: tag),
            SizedBox(height: 5.h),
            Text(headline,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400)),
            SizedBox(height: 5.h),
            Text('$newsDuration day ago',
                style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xFF494949)))
          ]))
    ]);
  }
}

class SmallNewsCon2 extends StatelessWidget {
  const SmallNewsCon2(
      {super.key, required this.image, required this.description});

  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 130.w,
          height: 130.h,
          decoration: ShapeDecoration(
              image: netWallPaper(image),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)))),
      SizedBox(width: 10.w),
      SizedBox(
          width: 215.w,
          height: 150.h,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(description,
                style:
                    TextStyle(fontSize: 9.spMax, fontWeight: FontWeight.w400))
          ]))
    ]);
  }
}
