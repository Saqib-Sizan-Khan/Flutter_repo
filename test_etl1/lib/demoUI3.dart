import 'package:flutter/material.dart';

class DemoUI3 extends StatelessWidget {
  const DemoUI3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/26.jpg'),
            ),

            SizedBox(height: 15,),

            Text('Send an invoice to', style: TextStyle(color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.w700),),
            Text('Alan Copper', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Service name',
                  contentPadding: EdgeInsets.only(top: 70)
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Message to client (optional)',
                    contentPadding: EdgeInsets.only(top: 70)
                ),
              ),
            ),

            Container(
              height: 100,
              width: 300,
              color: Colors.red,
            )


          ],
        ),
      ),
    );
  }
}
