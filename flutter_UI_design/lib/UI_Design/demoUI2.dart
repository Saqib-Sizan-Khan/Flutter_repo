import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class DemoUI2 extends StatelessWidget {
  const DemoUI2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arAvatarImage = [
      AssetImage('assets/images/29.jpg'),
      AssetImage('assets/images/50.jpg'),
      AssetImage('assets/images/51.jpg'),
      AssetImage('assets/images/24.jpg'),
    ];

    var arColor = [
      Color(0xffff4e3d),
      Color(0xff12acff),
      Color(0xff31c251),
      Color(0xfff87845),
      Color(0xffd706f1),
    ];

    var arColor2 = [
      Color(0xffffcacb),
      Color(0xffcad6ff),
      Color(0xff8cfc83),
      Color(0xffe4caff),
      Color(0xfff5e973),
    ];

    var arColorText = [
      Color(0xffff5154),
      Color(0xff3954c0),
      Color(0xff238528),
      Color(0xff92279b),
      Color(0xffa65133),
    ];

    var arProgress = [0.5, 0.4, 0.7, 0.9, 0.3];

    var arProgressType = [
      'Working\nHours',
      'Your\nEfficiency',
      'Dedication',
      'Leisure\ntime',
      'Other\nactivities'
    ];

    var arProgressResult = [
      '3 hours exceeded work',
      'Excellent result',
      'Well dedicated',
      'Too much controlled',
      'Properly done'
    ];

    var arTaskTime = ['10:00 AM', '11:00 AM', '12:00 PM', '3:00 PM', '4:00 PM'];

    var arTaskDuration = [
      '9:50 AM-10:50 AM',
      '10:50 AM-11:50 AM',
      '11:50 AM-12:50 PM',
      '2:50 PM-3:50 PM',
      '3:50 PM-5:00 PM'
    ];

    var arTaskName = [
      'Meeting with front-end developers',
      'Check the app test result',
      'Check repository update',
      'Meeting with Clients',
      'Requirement Analysis'
    ];

    var arTaskDept = [
      'UI/UX and front-end Department',
      'QA Department',
      'Dev-ops Department',
      'Management and QA Department',
      'Business Analysis Department'
    ];

    ScreenUtil.init(context, designSize: const Size(412, 915));

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.h,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Hello, Villie!',
            style: TextStyle(
                fontSize: 35.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xff1e086b)),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 27.r,
            backgroundColor: Colors.black26,
            child: CircleAvatar(
              radius: 23.r,
              backgroundImage: AssetImage('assets/images/53.jpg'),
            ),
          ),
          SizedBox(
            width: 30.w,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Progress
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Your progress',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff1e086b)),
            ),
          ),

          //Progress List
          Container(
            height: 250.h,
            width: 500.w,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 220.h,
                    width: 160.w,
                    padding: EdgeInsets.only(left: 10, top: 20),
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: arColor[index],
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [BoxShadow(blurRadius: 7.r)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircularPercentIndicator(
                          radius: 32.r,
                          lineWidth: 5.0.w,
                          percent: arProgress[index],
                          center: Text(
                            '${arProgress[index] * 100}%',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          progressColor: Colors.white,
                          backgroundColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text('${arProgressType[index]}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp)),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          '${arProgressResult[index]}',
                          style: TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                      ],
                    ),
                  );
                }),
          ),

          //Date
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: Text(
                  'Wednesday, March 7',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.sp,
                      color: Color(0xff1e086b)),
                ),
              ),
              SizedBox(
                width: 100.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 27),
                child: Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Icon(
                    Icons.date_range,
                    color: Colors.indigo,
                  ),
                ),
              )
            ],
          ),

          //Task List
          Container(
            width: 400.w,
            height: 393.h,
            padding: EdgeInsets.only(top: 30.w),
            child: ListView.builder(
                itemCount: arColor2.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${arTaskTime[index]}',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 270.w,
                          height: 130.h,
                          decoration: BoxDecoration(
                              color: arColor2[index],
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${arTaskName[index]}',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w900,
                                      color: arColorText[index]),
                                ),
                                Text(
                                  '${arTaskDept[index]}',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700,
                                      color: arColorText[index]),
                                ),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < arAvatarImage.length; i++)
                                      Align(
                                        widthFactor: 0.5,
                                        child: CircleAvatar(
                                          radius: 18.r,
                                          backgroundImage: arAvatarImage[i],
                                        ),
                                      ),
                                    SizedBox(
                                      width: 50.w,
                                    ),
                                    Text(
                                      '${arTaskDuration[index]}',
                                      style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700,
                                          color: arColorText[index]),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),

      bottomNavigationBar: FloatingNavbar(
        //onTap: (int val) => setState(() => _index = val),
        currentIndex: 0,
        backgroundColor: Color(0xff160c36),
        selectedBackgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        borderRadius: 30.r,
        iconSize: 25.sp,
        items: [
          FloatingNavbarItem(icon: Icons.grid_view_outlined),
          FloatingNavbarItem(icon: Icons.date_range),
          FloatingNavbarItem(icon: Icons.calendar_month_outlined),
          FloatingNavbarItem(icon: Icons.sms),
          FloatingNavbarItem(icon: Icons.settings),
        ],
      ),
      extendBody: true,
    );
  }
}
