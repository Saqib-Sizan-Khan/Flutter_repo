import 'package:flutter/material.dart';
import '../widgets/list_view.dart';
import '../widgets/textfield.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF494949),
        toolbarHeight: 94,
        title: SearchTextField(hint: 'Sports'),
      ),
      body: NewsListView(category: 'Sports'),
    );
  }
}
