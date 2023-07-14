import 'package:firebase_app/Student_Info/information.dart';
import 'package:firebase_app/Student_Info/user_update.dart';
import 'package:firebase_app/To_Do_app/to_do_app_ui.dart';
import 'package:firebase_app/login_app/userInfo.dart';
import 'package:firebase_app/Student_Info/user_signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'login_app/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: To_Do_App());
  }
}
