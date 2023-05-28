import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, color: Colors.black),
                    ],
                  border: Border.all(width: 5, color: Colors.teal)
                ),
                height: 150, width: 150,
                child: Center(child: Text('Hello', style: TextStyle(fontSize: 30, color: Colors.white))),
              ),
            ],
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, color: Colors.black),
                    ],
                    border: Border.all(width: 5, color: Colors.indigo)
                ),
                height: 100, width: 200,
                child: Center(child: Text('Hello', style: TextStyle(fontSize: 30, color: Colors.white))),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, color: Colors.black),
                    ],
                    border: Border.all(width: 5, color: Colors.teal)
                ),
                height: 100, width: 200,
                child: Center(child: Text('Hello', style: TextStyle(fontSize: 30, color: Colors.white))),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(blurRadius: 20, color: Colors.black),
                    ],
                    border: Border.all(width: 5, color: Colors.blueGrey)
                ),
                height: 100, width: 200,
                child: Center(child: Text('Hello', style: TextStyle(fontSize: 30, color: Colors.white))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
