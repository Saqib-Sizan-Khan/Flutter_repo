import 'package:flutter/material.dart';

import '../widgets/buttons.dart';
import '../widgets/textfield.dart';
import '../widgets/texts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
                child:
                    Image.asset('assets/images/dhakaLive_logo.png', scale: 2)),
          ),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  AuthTextField(
                      title: 'Your Name',
                      hint: 'Saqib Sizan',
                      textInputType: TextInputType.name),
                  AuthTextField(
                      title: 'Phone Number',
                      hint: '+88 (017) 00000000',
                      textInputType: TextInputType.phone),
                  AuthTextField(title: 'Password', hint: '', obscure: true),
                  SizedBox(height: 20),
                  SimpleButton(title: 'Sign Up'),
                  SizedBox(height: 20),
                  Text('OR',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  SizedBox(height: 20),
                  GoogleButton(),
                  SizedBox(height: 8),
                  FacebookButton(),
                  SizedBox(height: 127),
                  ClickableText(normText: 'Already Have Account? ', clickText: 'Login')
                ],
              )),
        ],
      ),
    );
  }
}
