import 'package:flutter/material.dart';
import 'package:test_etl1/StateFull_Widgets/counter_function.dart';

class Counter_UI extends StatelessWidget {
  const Counter_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Counter_Function()
      ),
    );
  }
}
