import 'package:flutter/material.dart';
import 'package:news_app/widgets/containers.dart';
import 'package:news_app/widgets/list_view.dart';
import 'package:news_app/widgets/news_app_bar.dart';

class CategoryPage2 extends StatelessWidget {
  const CategoryPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BreakingNewsCon(),
            //NewsListView()
          ],
        ),
      ),
    );
  }
}
