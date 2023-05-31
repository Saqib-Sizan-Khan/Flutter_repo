import 'package:flutter/material.dart';
import 'package:test_etl1/Sports_App/sports_bottom_nav.dart';
import 'package:test_etl1/Sports_App/sports_club_UI.dart';

class Sports_Level_UI extends StatelessWidget {
  const Sports_Level_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Choose your Level',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              width: 400,
              height: 320,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 230,
                      height: 300,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text('💪', style: TextStyle(fontSize: 35)),
                              ),),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Average',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 80,
            ),
            CircleAvatar(
                radius: 35,
                backgroundColor: Colors.teal,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Sports_Bottom_Nav()),
                      );
                    },
                    iconSize: 30,
                    icon: Icon(Icons.arrow_forward_ios_sharp, color: Colors.white,))),
            SizedBox(
              height: 20,
            ),
            Text(
              'Skip for now',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
