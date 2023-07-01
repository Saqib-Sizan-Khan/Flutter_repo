import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_etl1/login_UI/login_UI.dart';
import 'package:test_etl1/login_UI/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(412, 915),
        builder: (context, child) {
          return MaterialApp(
            theme: MyAppTheme.lightTheme,
            darkTheme: MyAppTheme.darkTheme,
            themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                toolbarHeight: 70,
                title: Text('Account Login'),
                leading: Icon(Icons.account_balance),
                actions: [
                  Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: isDark
                          ? Icon(Icons.dark_mode_outlined)
                          : Icon(Icons.light_mode_outlined)),
                  Switch(
                      value: isDark,
                      onChanged: (value) {
                        setState(() {
                          isDark = !isDark;
                        });
                      })
                ],
              ),
              body: LoginUI(),
            ),
          );
        });
  }
}
