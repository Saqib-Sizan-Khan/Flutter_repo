import 'package:flutter/material.dart';

class Sports_League_UI extends StatefulWidget {
  const Sports_League_UI({Key? key}) : super(key: key);

  @override
  State<Sports_League_UI> createState() => _Sports_League_UIState();
}

class _Sports_League_UIState extends State<Sports_League_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/league_background.jpg'),
              fit: BoxFit.cover),
        ),
       child: Padding(
         padding: EdgeInsets.all(10.0),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(
               width: 60,
               height: 60,
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   primary: Colors.white,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15)
                   ),
                 ),
                 onPressed: () {
                   Navigator.pop(context);
                 },
                 child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
               ),
             )
           ],
         ),
       ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        onPressed: () {
          _showDetails(context);
        },
        label: Text(
          "Details",
          style: TextStyle(color: Colors.teal, fontSize: 20),
        ),
        icon: Icon(
          Icons.more_vert,
          color: Colors.teal,
          size: 30,
        ),
      ),
    );
  }
}

void _showDetails(context) {
  showModalBottomSheet(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(50))
      ),
      context: context,
      builder: (BuildContext bc) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 5,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Men's league",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Take part in a 2-hour session where\nyou can expect plenty of rallying followed\nby competitive point play team singles style.',
                style: TextStyle(color: Colors.grey[400], fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '24 February',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '18:00 - 20:00',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'All levels',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 400,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff038D48),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: Text(
                      'Participate \$30',
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ],
          ),
        );
      });
}
