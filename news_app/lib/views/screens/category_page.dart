import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/model/constants.dart';
import 'package:news_app/views/screens/category_page2.dart';
import '../widgets/news_app_bar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
                  width: 358.w,
                  height: 60.h,
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r))),
                  child: Center(
                      child: Text(categoryList[index],
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600))),
                ),
              );
            }));
  }
}
