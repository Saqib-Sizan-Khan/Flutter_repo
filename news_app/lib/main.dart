import 'package:flutter/material.dart';
import 'package:news_app/screens/category_page.dart';
import 'package:news_app/screens/category_page2.dart';
import 'package:news_app/screens/homepage.dart';
import 'package:news_app/screens/login_page.dart';
import 'package:news_app/screens/news_bottom_nav.dart';
import 'package:news_app/screens/otp_page.dart';
import 'package:news_app/screens/search_page.dart';
import 'package:news_app/screens/settings_page.dart';
import 'package:news_app/screens/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
