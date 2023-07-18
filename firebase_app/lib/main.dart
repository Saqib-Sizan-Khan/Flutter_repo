import 'package:firebase_app/Student_Info/information.dart';
import 'package:firebase_app/Student_Info/user_update.dart';
import 'package:firebase_app/To_Do_app/to_do_app_theme.dart';
import 'package:firebase_app/To_Do_app/to_do_app_ui.dart';
import 'package:firebase_app/login_app/userInfo.dart';
import 'package:firebase_app/Student_Info/user_signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'login_app/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ToDoAppTheme.lightTheme,
        darkTheme: ToDoAppTheme.darkTheme,
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(size: 25),
            toolbarTextStyle: TextStyle(fontSize: 22, color: isDark ? Colors.white : Colors.black),
            title: const Icon(Icons.menu, size: 25),
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      isDark = !isDark;
                    });
                  },
                  icon: isDark ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined)),
              SizedBox(width: 10),
              Text('To Do App'),
              SizedBox(width: 20)
            ],
          ),
          body: To_Do_App(),
        ));
  }
}
