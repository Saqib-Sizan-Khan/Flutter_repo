import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_repo.dart';
import 'package:news_app/views/screens/news_bottom_nav.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final NewsController controller = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => controller.isLoading.value
            ? Center(
                child: Image.asset("assets/images/dhakaLive_logo.png",
                    scale: 2.sp),
              )
            : NewsBottomNav()));
  }
}
