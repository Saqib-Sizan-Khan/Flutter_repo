import 'package:flutter/material.dart';
import 'package:test_etl1/StateFull_Widgets/progress_function.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(top: 30, left: 25, bottom: 20),
              child: Text(
                'Clients',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700]),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 187,
                  height: 130,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 18),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'CLIENT COUNT',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      Text(
                        '200',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 187,
                  height: 130,
                  padding: EdgeInsets.all(18),
                  margin: EdgeInsets.only(left: 7),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AVG SESSIONS/CLIENT',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              width: 380,
              height: 200,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(left: 18),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'TOP 1 CLIENTS',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Text(
                          'SESSIONS',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage('assets/images/29.jpg'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Alan Copper',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          '30',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
