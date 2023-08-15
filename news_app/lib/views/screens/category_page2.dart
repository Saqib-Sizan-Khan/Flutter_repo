import 'package:flutter/material.dart';
import '../widgets/list_view.dart';
import '../widgets/news_app_bar.dart';

class CategoryPage2 extends StatelessWidget {
  CategoryPage2({super.key, required this.category});

  String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //BreakingNewsCon(),
            NewsListView(category: category)
          ],
        ),
      ),
    );
  }
}
