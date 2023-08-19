import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/model/constants.dart';
import 'package:news_app/views/screens/category_page2.dart';
import '../widgets/news_app_bar.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NewsAppBar(),
        body: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(CategoryPage2(category: categoryList[index]));
                },
                child: Container(
                  width: 358,
                  height: 60,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: ShapeDecoration(
                      color: const Color(0xFFF5F5F5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: Center(
                      child: Text(categoryList[index],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600))),
                ),
              );
            }));
  }
}
