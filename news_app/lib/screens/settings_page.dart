import 'package:flutter/material.dart';
import 'package:news_app/widgets/buttons.dart';
import '../variables/variables.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF494949),
        toolbarHeight: 94,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/images/dhakaLive_logo_dark.png', scale: 2),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset('assets/images/bell_logo.png', scale: 0.8),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 33, left: 22),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/person_logo.png'),
                        ),
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: CircleAvatar(
                            radius: 9,
                            child: Image.asset('assets/images/camera_logo.png',
                                scale: 1.8),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 13),
                  Container(
                    width: 114,
                    height: 42,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Saqib Sizan',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500)),
                        Text('01700000000',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w300))
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 77,
                  height: 34,
                  margin: EdgeInsets.only(right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.25, color: Color(0xFF494949)),
                          borderRadius: BorderRadius.circular(8))),
                  child: Row(
                    children: [
                      Image.asset('assets/images/edit_logo.png'),
                      SizedBox(width: 8),
                      Text('Edit',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 34),
          ListView.separated(
            itemCount: settingsOptions.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      settingsOptions[index],
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF494949)),
                    ),
                    Image.asset('assets/images/arrow_right_logo.png',
                        scale: 1.5)
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
                thickness: 1,
                indent: 30,
                endIndent: 30,
                color: Colors.black.withOpacity(0.1)),
          ),
          SizedBox(height: 30),
          SimpleButton(
              title: 'Logout',
              image: 'assets/images/logoout_logo.png',
              scale: 1.5)
        ],
      ),
    );
  }
}
