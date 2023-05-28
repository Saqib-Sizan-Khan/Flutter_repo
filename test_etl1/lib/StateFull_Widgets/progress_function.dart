import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Progress_Function extends StatefulWidget {
  const Progress_Function({Key? key}) : super(key: key);

  @override
  State<Progress_Function> createState() => _Progress_FunctionState();
}

class _Progress_FunctionState extends State<Progress_Function> {
  int progress = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 310,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularPercentIndicator(
                radius: 50.0,
                lineWidth: 12.0,
                percent: progress / 100,
                progressColor: Colors.greenAccent[400],
                backgroundColor: Colors.grey,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.amberAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$progress%',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Interview prep',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.pinkAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$progress%',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Ongoing education',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$progress%',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Other services',
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff071EA8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  setState(() {
                    if (progress < 100) progress = progress + 5;
                  });
                },
                child: Text(
                  'Create Invoice',
                  style: TextStyle(fontSize: 20),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(width: 1, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {
                  setState(() {
                    if (progress > 0) progress = progress - 5;
                  });
                },
                child: Text(
                  'View all Invoices',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
          ),
        ],
      ),
    );
  }
}
