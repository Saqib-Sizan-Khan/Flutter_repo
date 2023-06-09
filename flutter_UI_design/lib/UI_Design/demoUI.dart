import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DemoUI extends StatelessWidget {
  const DemoUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arImage = [
      AssetImage('assets/images/29.jpg'),
      AssetImage('assets/images/50.jpg'),
    ];

    var arDate = [22, 7, 10, 12];
    var arStatus = ['Done', 'In progess', 'Ongoing', 'Wating for Review'];

    ScreenUtil.init(context, designSize: const Size(412, 915));

    return Scaffold(
      backgroundColor: Color(0xff513CBD),
      appBar: AppBar(
        toolbarHeight: 120.h,
        elevation: 40,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Icon(
            Icons.menu_sharp,
            size: 40.sp,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 25.r,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 22.r,
              backgroundImage: AssetImage('assets/images/25.jpg'),
            ),
          ),
          SizedBox(
            width: 40.w,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Hi Sizan',
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '6 Tasks are pending',
              style: TextStyle(fontSize: 18.sp, color: Colors.white),
            ),
          ),

          //task pending box
          Container(
            margin: EdgeInsets.only(left: 25, top: 30),
            height: 145.h,
            width: 360.w,
            decoration: BoxDecoration(
                color: Color(0xff5250D5),
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [BoxShadow(blurRadius: 5.r)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 12),
                  child: Text(
                    'Mobile App Design',
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Saqib and Sizan',
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, top: 20),
                  child: Row(
                    children: [
                      for (int i = 0; i < arImage.length; i++)
                        Align(
                          widthFactor: 0.7,
                          child: CircleAvatar(
                            radius: 23.r,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 20.r,
                              backgroundImage: arImage[i],
                            ),
                          ),
                        ),
                      SizedBox(
                        width: 210.w
                      ),
                      Text(
                        'Now',
                        style: TextStyle(fontSize: 16.sp, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Review section
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 25),
                child: Text(
                  'Monthly Review',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                width: 140.w,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: CircleAvatar(
                  backgroundColor: Color(0xff57D4F1),
                  radius: 23.r,
                  child: Icon(
                    Icons.card_travel_outlined,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),

          //Tasks Grid
          Container(
            height: 380.h,
            width: 380.w,
            child: GridView.builder(
                itemCount: arDate.length,
                padding: EdgeInsets.only(left: 30.h, top: 20.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Color(0xff5250D5),
                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [BoxShadow(blurRadius: 2.r)]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          arDate[index].toString(),
                          style: TextStyle(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          arStatus[index],
                          style: TextStyle(fontSize: 15.sp, color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.grey[400],
        elevation: 25,
        type: BottomNavigationBarType.fixed,
        iconSize: 30.sp,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined), label: ''),
        ],
      ),
    );
  }
}
