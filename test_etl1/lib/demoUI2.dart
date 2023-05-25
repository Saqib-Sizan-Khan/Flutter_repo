import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DemoUI2 extends StatelessWidget {
  const DemoUI2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arAvatarImage = [
      AssetImage('assets/images/29.jpg'),
      AssetImage('assets/images/50.jpg'),
      AssetImage('assets/images/51.jpg'),
      AssetImage('assets/images/24.jpg'),
    ];

    var arColor = [
      Color(0xffff4e3d),
      Color(0xff12acff),
      Color(0xff31c251),
      Color(0xfff87845),
      Color(0xffd706f1),
    ];

    var arColor2 = [
      Color(0xffffcacb),
      Color(0xffcad6ff),
      Color(0xff8cfc83),
      Color(0xffe4caff),
      Color(0xfff5e973),
    ];

    var arColorText = [
      Color(0xffff5154),
      Color(0xff3954c0),
      Color(0xff238528),
      Color(0xff92279b),
      Color(0xffa65133),
    ];

    var arProgress = [0.5, 0.4, 0.7, 0.9, 0.3];

    var arProgressType = [
      'Working\nHours',
      'Your\nEfficiency',
      'Dedication',
      'Leisure\ntime',
      'Other\nactivities'
    ];

    var arProgressResult = [
      '3 hours exceeded work',
      'Excellent result',
      'Well dedicated',
      'Too much controlled',
      'Properly done'
    ];

    var arTaskTime = ['10:00 AM', '11:00 AM', '12:00 PM', '3:00 PM', '4:00 PM'];

    var arTaskDuration = [
      '9:50 AM-10:50 AM',
      '10:50 AM-11:50 AM',
      '11:50 AM-12:50 PM',
      '2:50 PM-3:50 PM',
      '3:50 PM-5:00 PM'
    ];

    var arTaskName = [
      'Meeting with front-end developers',
      'Check the app test result',
      'Check repository update',
      'Meeting with Clients',
      'Requirement Analysis'
    ];

    var arTaskDept = [
      'UI/UX and front-end Department',
      'QA Department',
      'Dev-ops Department',
      'Management and QA Department',
      'Business Analysis Department'
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Hello, Villie!',
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.black26,
            child: CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage('assets/images/53.jpg'),
            ),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Progress
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Your progress',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.deepPurple),
            ),
          ),

          //Progress List
          Container(
            height: 250,
            width: 500,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 220,
                    width: 160,
                    padding: EdgeInsets.only(left: 10, top: 20),
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: arColor[index],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(blurRadius: 7)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircularPercentIndicator(
                          radius: 32.0,
                          lineWidth: 5.0,
                          percent: arProgress[index],
                          center: Text(
                            '${arProgress[index] * 100}%',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.white,
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text('${arProgressType[index]}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${arProgressResult[index]}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }),
          ),

          //Date
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: Text(
                  'Wednesday, March 7',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.deepPurple),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Padding(
                padding: EdgeInsets.only(top: 27),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(15)),
                  child: Icon(
                    Icons.date_range,
                    color: Colors.indigo,
                  ),
                ),
              )
            ],
          ),

          //Task List
          Container(
            width: 400,
            height: 460,
            padding: EdgeInsets.only(top: 30),
            child: ListView.builder(
                itemCount: arColor2.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${arTaskTime[index]}',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 290,
                          height: 130,
                          decoration: BoxDecoration(
                              color: arColor2[index],
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${arTaskName[index]}',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: arColorText[index]),
                                ),
                                Text(
                                  '${arTaskDept[index]}',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: arColorText[index]),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < arAvatarImage.length; i++)
                                      Align(
                                        widthFactor: 0.5,
                                        child: CircleAvatar(
                                          radius: 18,
                                          backgroundImage: arAvatarImage[i],
                                        ),
                                      ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      '${arTaskDuration[index]}',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: arColorText[index]),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
