import 'dart:ui';

import 'package:flutter/material.dart';

class REA_Home_Page extends StatelessWidget {
  const REA_Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 100,
        leading: Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ImageIcon(
            AssetImage('assets/images/icons/menu.png'),
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            width: 60,
            height: 60,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ImageIcon(
              AssetImage('assets/images/icons/settings.png'),
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'City',
                      style: TextStyle(fontSize: 25, color: Colors.grey[700]),
                    ),
                    Text(
                      'San Francisco',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 150,
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                                child: Text(
                              'For sale',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                          );
                        }),
                  )
                ],
              )),
          Expanded(
              flex: 6,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                            width: 380,
                            height: 190,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/house_images/house1.jpeg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(25)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: ImageIcon(AssetImage(
                                        'assets/images/icons/like.png')),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          width: 380,
                          height: 80,
                          margin: EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('\$200.000',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Jenison, MI 49428, SF',
                                    style: TextStyle(
                                        color: Colors.grey[700], fontSize: 20),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Text('4 bedrooms/2 bathrooms/1,416ft',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                  Text(
                                    '2',
                                    style: TextStyle(fontFeatures: [
                                      FontFeature.enable('sups')
                                    ], fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  })),
        ],
      ),
    );
  }
}
