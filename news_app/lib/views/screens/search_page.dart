import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import '../widgets/containers.dart';
import '../widgets/images.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final TextEditingController searchController = TextEditingController();
  final NewsController controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    controller.getNewsCategory('General');
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFF494949),
            toolbarHeight: 94.h,
            title: TextField(
              controller: searchController,
              style: TextStyle(fontSize: 15.spMax, color: Colors.black),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Type news category",
                  hintStyle:
                      TextStyle(fontSize: 13.sp, color: Colors.grey[400]),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                  ),
                  suffixIcon: InkWell(
                      onTap: () {
                        controller.getNewsCategory(searchController.text);
                      },
                      child: Logo(name: 'search_logo.png', scale: 2.sp))),
            )),
        body: Obx(() => controller.isLoading.value
            ? SizedBox(
                height: 400.h,
                child: const Center(child: CircularProgressIndicator()))
            : ListView.separated(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                itemCount: controller.categoryNewsModel.value.articles.length,
                itemBuilder: (context, index) {
                  return controller
                              .categoryNewsModel.value.articles[index].title ==
                          null
                      ? const SizedBox()
                      : SmallNewsCon(
                          image: controller.categoryNewsModel.value
                                  .articles[index].urlToImage ??
                              '',
                          tag: searchController.text != ''
                              ? searchController.text
                              : 'General',
                          headline: controller.categoryNewsModel.value
                                  .articles[index].title ??
                              '',
                          newsTime: controller.categoryNewsModel.value
                                  .articles[index].publishedAt ??
                              '');
                },
                separatorBuilder: (context, index) {
                  return controller
                              .categoryNewsModel.value.articles[index].title ==
                          null
                      ? const SizedBox()
                      : Divider(
                          thickness: 1, color: Colors.black.withOpacity(0.2));
                })));
  }
}
