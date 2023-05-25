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
      AssetImage('assets/images/53.jpg'),
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
                  fontWeight: FontWeight.bold,
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
                        color: Color(0xffF56D61),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(blurRadius: 7)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircularPercentIndicator(
                          radius: 32.0,
                          lineWidth: 5.0,
                          percent: 0.5,
                          center: Text(
                            "19/40",
                            style: TextStyle(color: Colors.white),
                          ),
                          progressColor: Colors.white,
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('Working\nHours',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Working hours exceeded by 3 hours',
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
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.deepPurple),
                ),
              ),
              SizedBox(
                width: 110,
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
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10:00 AM',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 270,
                          height: 130,
                          decoration: BoxDecoration(
                              color: Color(0xffffcacb),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Meeting with front-end developers',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.purple),
                                ),
                                Text(
                                  'Marketing Department',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffff5154)),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < arAvatarImage.length; i++)
                                      Align(
                                        widthFactor: 0.7,
                                        child: CircleAvatar(
                                          radius: 17,
                                          backgroundImage: arAvatarImage[i],
                                        ),
                                      ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      '9:50 AM - 10:50 AM',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffff5154)),
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
