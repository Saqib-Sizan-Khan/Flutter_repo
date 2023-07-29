import 'package:flutter/material.dart';
import 'package:news_app/variables/variables.dart';
import 'package:news_app/widgets/images.dart';
import 'package:news_app/widgets/news_app_bar.dart';
import 'package:news_app/widgets/tags.dart';

class CategoryPage2 extends StatelessWidget {
  const CategoryPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  decoration:
                      BoxDecoration(image: wallPaper('padma_bridge.png')),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          NewsTags(tagName: 'Breaking News'),
                          SizedBox(width: 5),
                          NewsTags(tagName: 'National')
                        ],
                      ),
                      SizedBox(height: 5),
                      Text('Inauguration of the dream Padma Bridge on June 25',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400)),
                      SizedBox(height: 3),
                      Text(
                          'The dream Padma Bridge will be inaugurated on June 25. Prime Minister Sheikh Hasina will inaugurate the bridge at 10 am today. The dream Padma Bridge will be inaugurated on June 25. Prime Minister at 10 am today',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w300),
                          textAlign: TextAlign.justify),
                      SizedBox(height: 3),
                      Text('10 minutes ago',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF494949))),
                      SizedBox(height: 35),
                      ListView.separated(
                          shrinkWrap: true,
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
                          itemCount: newsHeadline.length)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
