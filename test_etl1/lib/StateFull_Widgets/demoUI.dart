import 'package:flutter/material.dart';
import 'package:test_etl1/StateFull_Widgets/progress_function.dart';

class DemoStatefull extends StatelessWidget {
  const DemoStatefull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Center(
            child: Text(
          'Dashboard',
          style: TextStyle(color: Colors.black),
        )),
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Progress_Function(),

          Padding(
            padding: const EdgeInsets.only(top: 30, left: 25),
            child: Text('Clients', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
          ),

        ],
      )

    );
  }
}
