import 'package:flutter/material.dart';
import 'package:news_app/variables/variables.dart';
import 'package:news_app/widgets/images.dart';
import 'package:news_app/widgets/tags.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 130,
                height: 90,
                decoration: ShapeDecoration(
                    image: wallPaper(newsImage[index]),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(5))),
              ),
              SizedBox(width: 10),
              Container(
                width: 215,
                height: 100,
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    NewsTags(tagName: newsTag[index], textColor: 0xFFF1582C),
                    SizedBox(height: 5),
                    Text(
                      newsHeadline[index],
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5),
                    Text('10 minutes ago',
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF494949))),
                  ],
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) => Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.2)),
        itemCount: newsHeadline.length);
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
              TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
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
                          padding:
                          EdgeInsets.only(left: 10, bottom: 10),
                          decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: [
                                    Color(0x00D9D9D9),
                                    Colors.black
                                  ]),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              NewsTags(
                                  tagName: 'National',
                                  textColor: 0xFFFFFFFF),
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

