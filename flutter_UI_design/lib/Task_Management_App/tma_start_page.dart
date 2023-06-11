import 'package:flutter/material.dart';
import 'package:test_etl1/Task_Management_App/tma_bottom_nav.dart';
import 'package:test_etl1/Task_Management_App/tma_home_page.dart';

class TMA_Start_Page extends StatelessWidget {
  const TMA_Start_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFD1ECBF),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.keyboard_option_key_outlined,
                    size: 33,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Dayzer',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'To simplify\nthe way you\nwork',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/geomatry_img.png'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Controllin deliveries in\nreliable and no-hassle way',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 70,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TMA_Bottom_Nav()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF26272C),
                    ),
                    child: Text(
                      'Get free trial',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              )
            ],
          ),
        ));
  }
}
