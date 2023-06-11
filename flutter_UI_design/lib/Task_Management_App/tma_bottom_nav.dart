import 'package:flutter/material.dart';
import 'package:test_etl1/Task_Management_App/tma_home_page.dart';
import 'package:test_etl1/Task_Management_App/tma_task_page.dart';

class TMA_Bottom_Nav extends StatefulWidget {
  const TMA_Bottom_Nav({Key? key}) : super(key: key);

  @override
  State<TMA_Bottom_Nav> createState() => _TMA_Bottom_NavState();
}

class _TMA_Bottom_NavState extends State<TMA_Bottom_Nav> {
  var pages = [TMA_Home_Page(), TMA_Task_Page()];
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(page),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        iconSize: 25,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF26272C),
        unselectedItemColor: Colors.grey,
        onTap: (int value) {
          setState(() {
            page = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.task),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.folder_copy),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.date_range_outlined),label: ''),
        ],
      ),
    );
  }
}
