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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$category News',
                  style: const TextStyle(fontSize: 24, color: Color(0xFFF1582C))),
            ),
            NewsListView(category: category)
          ],
        ),
      ),
    );
  }
}
