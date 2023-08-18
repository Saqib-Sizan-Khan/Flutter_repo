import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import '../widgets/containers.dart';
import '../widgets/images.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  TextEditingController searchController = TextEditingController();
  NewsController controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    controller.getNewsCategory('General');
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFF494949),
            toolbarHeight: 94,
            title: TextField(
              controller: searchController,
              style: TextStyle(fontSize: 15, color: Colors.black),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Type news category",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey[400]),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.blue),
                  ),
                  suffixIcon: InkWell(
                      onTap: () {
                        controller.getNewsCategory(searchController.text);
                      },
                      child: Logo(name: 'search_logo.png', scale: 1.5))),
            )),
        body: Obx(() => controller.isLoading.value
            ? const SizedBox(
                height: 400, child: Center(child: CircularProgressIndicator()))
            : ListView.separated(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                itemCount: controller.categoryNewsModel.value.articles.length,
                itemBuilder: (context, index) {
                  return SmallNewsCon(
                      image: controller.categoryNewsModel.value.articles[index]
                              .urlToImage ??
                          '',
                      tag: searchController.text != ''
                          ? searchController.text
                          : 'General',
                      headline: controller
                              .categoryNewsModel.value.articles[index].title ??
                          '',
                      newsTime: controller.categoryNewsModel.value
                              .articles[index].publishedAt ??
                          '');
                },
                separatorBuilder: (context, index) => Divider(
                    thickness: 1, color: Colors.black.withOpacity(0.2)))));
  }
}
