import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/navigation_controller.dart';

class NewsBottomNav extends StatelessWidget {
  NewsBottomNav({super.key});

  final NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: controller.pages.elementAt(controller.pageIndex.value),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.pageIndex.value,
            iconSize: 25,
            elevation: 20,
            showUnselectedLabels: true,
            selectedItemColor: const Color(0xFFF1582C),
            unselectedItemColor: const Color(0xFF494949),
            onTap: (int value) {
              controller.changePage(value);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: 'Category'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        ));
  }
}
