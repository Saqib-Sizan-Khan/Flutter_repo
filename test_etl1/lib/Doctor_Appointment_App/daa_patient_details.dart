import 'package:flutter/material.dart';

class DAA_Patient_Details extends StatelessWidget {
  const DAA_Patient_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  onPressed: () {},
                  child: Icon(Icons.arrow_back_ios, color: Colors.grey,),
                ),
              ),

              Text('Session Info'),

              SizedBox(
                width: 60,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  onPressed: () {},
                  child: Icon(Icons.arrow_back_ios, color: Colors.grey,),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
