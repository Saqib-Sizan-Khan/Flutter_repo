import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/list_view.dart';
import '../widgets/news_app_bar.dart';

class CategoryPage2 extends StatelessWidget {
  const CategoryPage2({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NewsAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$category News',
                  style: TextStyle(fontSize: 24.spMax, color: const Color(0xFFF1582C))),
            ),
            NewsListView(category: category)
          ],
        ),
      ),
    );
  }
}
