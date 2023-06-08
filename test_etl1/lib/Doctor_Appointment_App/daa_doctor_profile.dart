import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class DAA_Doctor_Profile extends StatelessWidget {
  const DAA_Doctor_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arWeeks = ['Wed', 'Thu', 'Fri', 'Sat', 'Sun', 'Mon', 'Tue'];
    var arDate = [9, 10, 11, 12, 13, 14, 15];
    var arNames = [
      'Sarah Miller',
      'Jill Robbins',
      'Tom Stuart',
      'Saqib Sizan',
      'Aqib Jishan'
    ];
    var arImage = [
      AssetImage('assets/images/21.jpg'),
      AssetImage('assets/images/22.jpg'),
      AssetImage('assets/images/24.jpg'),
      AssetImage('assets/images/25.jpg'),
      AssetImage('assets/images/26.jpg'),
    ];

    return Scaffold(
      body: Container(
        child: CustomPaint(
          size:
              Size(double.maxFinite, ((double.maxFinite) * 1.71875).toDouble()),
          painter: RPSCustomPainter(),
          child: Container(
            padding: EdgeInsets.only(top: 30, left: 15, right: 15),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/images/52.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text('<  11 Feb 2023  >',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    SizedBox(
                      width: 70,
                    ),
                    SizedBox(
                      width: 55,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.white54,
                          elevation: 0.7,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Good morning Dr. Kim',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                Text(
                  'You have 5 seessions today',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: arWeeks.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: arDate[index] == 11
                                    ? Color(0xFF37715B)
                                    : Colors.grey[300],
                                child: Text(
                                  arDate[index].toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: arDate[index] == 11
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                arWeeks[index],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Upcoming Sessions',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 400,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.maxFinite,
                          height: 170,
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 25),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundImage: arImage[index],
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    arNames[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[700]),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '25 year - Depression - Takes meds',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[700]),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    '11 Feb 2023 09:00-09:00',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Checkbox(
                                value: true,
                                onChanged: null,
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color(0xFF37715B)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0003125, size.height * 0.1816364);
    path0.quadraticBezierTo(size.width * 0.6828125, size.height * 0.0509091,
        size.width * 0.9906250, size.height * 0.2545455);
    path0.quadraticBezierTo(size.width * 0.9851562, size.height * 0.2550000,
        size.width, size.height * 0.2545455);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);
    path0.lineTo(size.width * 0.0003125, size.height * 0.1816364);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
