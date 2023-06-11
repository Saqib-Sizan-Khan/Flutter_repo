import 'package:flutter/material.dart';

class My_Textfield extends StatelessWidget {
  const My_Textfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: 'Enter Name',
                suffix: Icon(Icons.search, color: Colors.purple,)
              ),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Next Page')),
          TextButton(onPressed: (){}, child: Text('Next Page')),
          InkWell(
            onTap: (){},
              child: Text("Go to New Page", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}
