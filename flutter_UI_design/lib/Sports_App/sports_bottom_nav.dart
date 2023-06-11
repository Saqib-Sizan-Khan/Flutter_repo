import 'package:flutter/material.dart';
import 'package:test_etl1/Sports_App/sports_club_UI.dart';
import 'package:test_etl1/Sports_App/sports_league_UI.dart';

class Sports_Bottom_Nav extends StatefulWidget {
  const Sports_Bottom_Nav({Key? key}) : super(key: key);

  @override
  State<Sports_Bottom_Nav> createState() => _Sports_Bottom_NavState();
}

class _Sports_Bottom_NavState extends State<Sports_Bottom_Nav> {
  var pages = [Sports_Club_UI(), Sports_League_UI()];
  int page_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(page_index),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page_index,
        onTap: (int value) {
          setState(() {
            page_index = value;
          });
        },
        iconSize: 30,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        selectedItemColor: Colors.teal[700],
        backgroundColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.sports_baseball), label: 'Clubs'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_football_rounded), label: 'League'),
        ],
      ),
    );
  }
}
