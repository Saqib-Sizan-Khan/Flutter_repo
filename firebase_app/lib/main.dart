import 'package:firebase_app/Student_Info/information.dart';
import 'package:firebase_app/Student_Info/user_update.dart';
import 'package:firebase_app/userInfo.dart';
import 'package:firebase_app/Student_Info/user_signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'login_page.dart';

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
        theme: ThemeData(colorSchemeSeed: Colors.deepPurple, useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: UserSignUp());
  }
}
