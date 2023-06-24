import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_etl1/login_UI/login_UI.dart';
import 'package:test_etl1/login_UI/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 915),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            theme: MyAppTheme.lightTheme,
            darkTheme: MyAppTheme.darkTheme,
            themeMode: ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                  title: Text('Account Login'), leading: Icon(Icons.account_balance)),
              body: LoginUI(),
            ),
          );
        });
  }
}
