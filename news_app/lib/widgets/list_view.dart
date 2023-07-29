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
                    NewsTags(tagName: newsTag[index]),
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
