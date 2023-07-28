import 'package:flutter/material.dart';
import 'package:news_app/widgets/texts.dart';
import '../widgets/buttons.dart';
import '../widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
                child:
                    Image.asset('assets/images/dhakaLive_logo.png', scale: 2)),
          ),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  NewsAppTextField(
                      title: 'Phone Number',
                      hint: '+88 (017) 00000000',
                      textInputType: TextInputType.phone),
                  NewsAppTextField(title: 'Password', hint: '', obscure: true),
                  SizedBox(height: 20),
                  SimpleButton(title: 'Login'),
                  SizedBox(height: 20),
                  ClickableText(
                      normText: 'Forgot Password? ',
                      clickText: 'Set New Password'),
                  SizedBox(height: 140),
                  ClickableText(
                      normText: "Don't have a Account? ",
                      clickText: 'Create New Account'),
                ],
              )),
        ],
      ),
    );
  }
}
