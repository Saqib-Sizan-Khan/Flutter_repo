import 'package:flutter/material.dart';

class DAA_Patient_Details extends StatelessWidget {
  const DAA_Patient_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arComplaints = [
      'bad mood',
      'insomnia',
      'apathy',
      'anger',
      'mood swings',
      'panic attacks'
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 88,
                      ),
                      Text(
                        'Session Info',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 88,
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.edit,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 43,
                      backgroundImage: AssetImage('assets/images/26.jpg'),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tom Stuart',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '25 year - Depression - Takes meds',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('11 Feb 2023 16:00 - 17:00',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF37715B))),
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Complaints',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      child: GridView.builder(
                          itemCount: arComplaints.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 10,
                                  mainAxisExtent: 40),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF37715B),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  arComplaints[index],
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              )),


          Expanded(flex: 4, child: Container(color: Colors.purple)),
          Expanded(flex: 3, child: Container(color: Colors.grey)),
        ],
      ),
    );
  }
}
