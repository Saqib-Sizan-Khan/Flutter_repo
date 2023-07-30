import 'package:flutter/material.dart';
import 'package:news_app/variables/variables.dart';
import 'package:news_app/widgets/containers.dart';
import 'package:news_app/widgets/images.dart';
import 'package:news_app/widgets/tags.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: newsHeadline.length,
        itemBuilder: (context, index) {
          return SmallNewsCon(
              image: newsImage[index],
              tag: newsTag[index],
              headline: newsHeadline[index]);
        },
        separatorBuilder: (context, index) =>
            Divider(thickness: 1, color: Colors.black.withOpacity(0.2)));
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
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
          SizedBox(height: 10),
          Container(
              height: 219,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          width: 154,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: wallPaper('lounch.png'),
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
                                  tagName: 'National', textColor: 0xFFFFFFFF),
                              Text(
                                'New rules for ferry movement on Shimulia-Banglabazar route',
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
  const NewsListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: newsImage.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(newsTag[index],
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
              SizedBox(height: 10),
              OrdinaryNewsCon(
                  image: newsImage[index],
                  newsTag: newsTag[index],
                  headline: newsHeadline[index]),
              SmallNewsCon(
                  image: newsImage[newsImage.length - index - 1],
                  tag: newsTag[newsImage.length - index - 1],
                  headline: newsHeadline[newsImage.length - index - 1])
            ],
          );
        });
  }
}
