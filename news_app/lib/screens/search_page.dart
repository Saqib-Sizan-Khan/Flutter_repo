import 'package:flutter/material.dart';
import 'package:news_app/widgets/images.dart';
import 'package:news_app/widgets/list_view.dart';
import 'package:news_app/widgets/textfield.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF494949),
        toolbarHeight: 94,
        title: SearchTextField(hint: 'Sports'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
        child: NewsListView(),
      ),
    );
  }
}
