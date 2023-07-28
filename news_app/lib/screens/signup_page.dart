import 'package:flutter/material.dart';

import '../widgets/buttons.dart';
import '../widgets/textfield.dart';

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
                  NewsAppTextField(
                      title: 'Your Name',
                      hint: 'Saqib Sizan',
                      textInputType: TextInputType.name),
                  NewsAppTextField(
                      title: 'Phone Number',
                      hint: '+88 (017) 00000000',
                      textInputType: TextInputType.phone),
                  NewsAppTextField(title: 'Password', hint: '', obscure: true),
                  SizedBox(height: 20),
                  SimpleButton(),
                  SizedBox(height: 20),
                  Text('OR',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                  SizedBox(height: 20),
                  GoogleButton(),
                  SizedBox(height: 8),
                  FacebookButton(),
                  SizedBox(height: 127),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Already Have Account? ',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w300)),
                    TextSpan(
                        text: 'Login',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFF1582C),
                            fontWeight: FontWeight.w400)),
                  ]))
                ],
              )),
        ],
      ),
    );
  }
}
