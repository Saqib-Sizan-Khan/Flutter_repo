import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
                SizedBox(width: 30,),
                Container(
                    height: 200, width: 200, color: Colors.white,
                  child: Column(
                    children: [
                      Container(height: 60,width: 200,color:Colors.pinkAccent,),
                      SizedBox(height: 6,),
                      Container(height: 60,width: 200,color:Colors.black,),
                      SizedBox(height: 6,),
                      Container(height: 60,width: 200,color:Colors.teal,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepOrangeAccent,
                ),
                SizedBox(width: 30,),
                Container(
                    height: 200, width: 200, color: Colors.lightGreenAccent),
              ],
            ),
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(height: 200, width: 200, color: Colors.grey),
                SizedBox(width: 30,),
                Container(height: 200, width: 200, color: Colors.tealAccent),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
