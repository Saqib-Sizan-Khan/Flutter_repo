import 'package:flutter/material.dart';

class DAA_Start_Page extends StatelessWidget {
  const DAA_Start_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF37715B),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image(image: AssetImage('assets/images/daa_background.png')),
          ),
          SizedBox(
            height: 50,
          ),
          Text('Therapy & Care',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700)),
          SizedBox(
            height: 15,
          ),
          Text('We help proffesional therapists\nand patients find each other',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400)),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 180,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40))),
              onPressed: () {},
              child: Text(
                'Get started',
                style: TextStyle(
                    color: Color(0xFF37715B),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }
}
