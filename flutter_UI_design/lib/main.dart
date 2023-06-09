import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_etl1/Doctor_Appointment_App/daa_doctor_profile.dart';
import 'package:test_etl1/Doctor_Appointment_App/daa_patient_details.dart';
import 'package:test_etl1/Doctor_Appointment_App/daa_start_page.dart';
import 'package:test_etl1/Real_Estated_App/rea_home_page.dart';
import 'package:test_etl1/Sports_App/sports_league_UI.dart';
import 'package:test_etl1/Sports_App/sports_bottom_nav.dart';
import 'package:test_etl1/Sports_App/sports_league_UI.dart';
import 'package:test_etl1/StateFull_Widgets/count_UI.dart';
import 'package:test_etl1/StateFull_Widgets/dashboardUI.dart';
import 'package:test_etl1/Sports_App/sports_club_UI.dart';
import 'package:test_etl1/Sports_App/sports_level_UI.dart';
import 'package:test_etl1/Task_Management_App/tma_bottom_nav.dart';
import 'package:test_etl1/Task_Management_App/tma_home_page.dart';
import 'package:test_etl1/Task_Management_App/tma_start_page.dart';
import 'package:test_etl1/Task_Management_App/tma_task_page.dart';
import 'package:test_etl1/UI_Design/demoUI2.dart';
import 'package:test_etl1/UI_Design/demoUI.dart';
import 'package:test_etl1/UI_Design/Progress_Indicator.dart';
import 'package:test_etl1/UI_Design/invoice_sendUI.dart';
import 'package:test_etl1/UI_Design/messenger_chats_UI.dart';
import 'package:test_etl1/login_UI/login_UI.dart';
import 'package:test_etl1/UI_Design/gridview.dart';
import 'package:test_etl1/UI_Design/homepage.dart';
import 'package:test_etl1/UI_Design/homepage2.dart';
import 'package:test_etl1/UI_Design/listview.dart';
import 'package:test_etl1/UI_Design/listTile.dart';
import 'package:test_etl1/UI_Design/my_stack.dart';
import 'package:test_etl1/UI_Design/slider.dart';
import 'package:test_etl1/UI_Design/messenger_stories_UI.dart';
import 'package:test_etl1/UI_Design/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 915),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: DemoUI()
          );
        });
  }
}
