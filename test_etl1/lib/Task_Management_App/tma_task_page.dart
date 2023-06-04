import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TMA_Task_Page extends StatelessWidget {
  const TMA_Task_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFD1ECBF),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.highlight_remove_rounded,
                          size: 70,
                          color: Colors.grey[800],
                        ),
                        SizedBox(
                          width: 250,
                        ),
                        Icon(
                          Icons.more_horiz_outlined,
                          size: 50,
                          color: Colors.grey[800],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Divider(
                      thickness: 5,
                      color: Colors.grey[500],
                      indent: 150,
                      endIndent: 150,
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.only(top: 50, left: 20),
                          child: Text(
                            'Messaging ID',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Your daily plan',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  SizedBox(
                                    width: 180,
                                  ),
                                  Text(
                                    '70%',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              LinearPercentIndicator(
                                width: 370,
                                lineHeight: 8.0,
                                percent: 0.7,
                                barRadius: Radius.circular(20),
                                padding: EdgeInsets.symmetric(horizontal: 0),
                                backgroundColor: Color(0xFFE5D6D1),
                                progressColor: Color(0xFF26272C),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                '4 to 6 completed',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey[700]),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 180,
                                height: 100,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFE6AB),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '17',
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.task),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Tasks finished',
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 180,
                                height: 100,
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFE6AB),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3,2',
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.access_time_filled_outlined),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Tracked hours',
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Overview',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Messaging ID framework development for the\nmaketing branch and the publicity bureau and\nimplemented a draft on the framework.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[700]),
                              )
                            ],
                          ),
                        )),



                    Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Members connected',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),

                              SizedBox(height: 20,),

                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                      AssetImage('assets/images/21.jpg'),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                      AssetImage('assets/images/29.jpg'),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                      AssetImage('assets/images/52.jpg'),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.grey[400],
                                      child: Icon(Icons.add, size: 30, color: Colors.grey[800],),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
