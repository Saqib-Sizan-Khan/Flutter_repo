import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/constants.dart';
import '../widgets/buttons.dart';
import '../widgets/images.dart';
import '../widgets/news_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NewsAppBar(),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Wrap(crossAxisAlignment: WrapCrossAlignment.end, children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 16, left: 22),
                      child: Stack(children: [
                        CircleAvatar(
                            radius: 30.r,
                            backgroundImage: const AssetImage(
                                'assets/images/person_logo.png')),
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: CircleAvatar(
                              radius: 9.r,
                              child: const Logo(
                                  name: 'camera_logo.png', scale: 1.8)),
                        )
                      ])),
                  SizedBox(width: 13.w),
                  SizedBox(
                      width: 130.w,
                      height: 50.h,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Saqib Sizan Khan',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500)),
                            Text('01700000000',
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w300))
                          ]))
                ]),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 80.w,
                        height: 40.h,
                        margin: const EdgeInsets.only(right: 16),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.25.w,
                                    color: const Color(0xFF494949)),
                                borderRadius: BorderRadius.circular(8.r))),
                        child: Row(children: [
                          Logo(name: 'edit_logo.png'),
                          SizedBox(width: 8.w),
                          Text('Edit',
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w400))
                        ])))
              ]),
          SizedBox(height: 30.h),
          ListView.separated(
              itemCount: settingsOptions.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            settingsOptions[index],
                            style: TextStyle(
                                fontSize: 13.spMax,
                                fontWeight: FontWeight.w300,
                                color: const Color(0xFF494949)),
                          ),
                          Logo(name: 'arrow_right_logo.png', scale: 1.5.sp)
                        ]));
              },
              separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  indent: 30,
                  endIndent: 30,
                  color: Colors.black.withOpacity(0.1))),
          SizedBox(height: 30.h),
          const SimpleButton(
              title: 'Logout',
              image: 'assets/images/logoout_logo.png',
              scale: 1.5),
          SizedBox(height: 20.h),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(children: [
                Logo(name: 'facebook_logo.png', scale: 4.8.spMin),
                SizedBox(width: 10.w),
                Logo(name: 'telegram_logo.png'),
                SizedBox(width: 10.w),
                Logo(name: 'twitter_logo.png'),
                SizedBox(width: 10.w),
                Logo(name: 'linkedin_logo.png'),
                SizedBox(width: 10.w),
                Logo(name: 'instagram_logo.png')
              ]))
        ])));
  }
}
