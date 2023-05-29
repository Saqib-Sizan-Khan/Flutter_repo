import 'package:flutter/material.dart';

class Invoice_SendUI extends StatelessWidget {
  const Invoice_SendUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = '10';
    var values = ['10','15','20','25','30'];

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
                style: TextStyle(fontSize: 18),
                controller: TextEditingController(text: 'Essay editing'),
                decoration: InputDecoration(
                  labelText: 'Service name',
                  contentPadding: EdgeInsets.symmetric(vertical: 18)
                ),
              ),
            ),

            SizedBox(height: 50,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                style: TextStyle(fontSize: 18),
                controller: TextEditingController(text: 'For our session last week on April 19'),
                decoration: InputDecoration(
                    labelText: 'Message to client (optional)',
                    contentPadding: EdgeInsets.symmetric(vertical: 18)
                ),
              ),
            ),

            SizedBox(height: 50,),

            Row(
              children: [
                Container(
                  width: 205,
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      keyboardType: TextInputType.number,
                      controller: TextEditingController(text: '\$39.99'),
                      decoration: InputDecoration(
                          labelText: 'Invoice amount',
                          contentPadding: EdgeInsets.symmetric(vertical: 18)
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 205,
                  height: 80,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Days until due', style: TextStyle(fontSize: 14, color: Colors.grey[700]),),

                      DropdownButton(
                        value: null,
                        isExpanded: true,
                        disabledHint: Text('10 days'),
                        padding: EdgeInsets.only(right: 30),
                        style: TextStyle(fontSize: 18,color: Colors.black),
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        items: values.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: null,
                      ),
                    ],
                  ),
                ),
              ],
            ),


            SizedBox(height: 200,),

            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff071EA8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text(
                    'Send invoice',
                    style: TextStyle(fontSize: 20),
                  )),
            ),



          ],
        ),
      ),
    );
  }
}
