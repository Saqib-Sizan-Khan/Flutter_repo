import 'package:flutter/material.dart';
import 'package:test_etl1/WhatsApp_UI/calls_page.dart';
import 'package:test_etl1/WhatsApp_UI/chats_page.dart';
import 'package:test_etl1/WhatsApp_UI/commnity_page.dart';
import 'package:test_etl1/WhatsApp_UI/status_page.dart';

class WP_UI extends StatelessWidget {
  WP_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.photo_camera_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 10,
            ),
          ],
          backgroundColor: Colors.teal,
          bottom: TabBar(
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.groups),
              ),
              Tab(child: Text('Chats', style: TextStyle(fontSize: 18))),
              Tab(child: Text('Status', style: TextStyle(fontSize: 18))),
              Tab(child: Text('Calls', style: TextStyle(fontSize: 18))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Community_Page(),
            Chats_Page(),
            Status_Page(),
            Calls_Page()
          ],
        ),
      ),
    );
  }
}
