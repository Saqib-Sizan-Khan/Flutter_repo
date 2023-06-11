import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class my_progress_indicator extends StatelessWidget {
  const my_progress_indicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CircularPercentIndicator(
          radius: 80.0,
          lineWidth: 10.0,
          percent: 0.5,
          center: new Text("100%"),
          progressColor: Colors.green,
        ),
      ),
    );
  }
}
