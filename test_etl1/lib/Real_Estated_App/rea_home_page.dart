import 'package:flutter/material.dart';

class REA_Home_Page extends StatelessWidget {
  const REA_Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              side: BorderSide(width: 1, color: Colors.grey),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            onPressed: null,
            child: Icon(Icons.menu_sharp, color: Colors.black),
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(width: 1, color: Colors.grey),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              onPressed: null,
              child: Icon(Icons.equalizer, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
