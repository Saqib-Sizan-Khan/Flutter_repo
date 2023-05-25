import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DemoUI2 extends StatelessWidget {
  const DemoUI2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Icon(Icons.calendar_month),
                ),
              )
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('10:00 AM', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),),

              SizedBox(width: 30,),

              Container(
                width: 260,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffFFE2EA),
                  borderRadius: BorderRadius.circular(20)
                ),

                child: Column(
                  children: [
                    Text('Meeting with front-end developers')
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
