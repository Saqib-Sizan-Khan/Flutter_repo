import 'package:flutter/material.dart';

class Community_Page extends StatelessWidget {
  const Community_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/community_logo.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  'Introducing communities',
                  style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Easily organise your related groups\n and send announcements. Now, your\n communities, like neighbourhoods or\n schools, can have their own space.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text(
                        'Start your community',
                        style: TextStyle(fontSize: 18),
                      )),
                )
              ],
            ))
      ],
    );
  }
}
