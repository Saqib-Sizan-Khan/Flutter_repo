import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child:
                Center(child: Image.asset('assets/images/dhakaLive_logo.png', scale: 2)),
          ),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    NewsAppTextField(
                        title: 'Your Name',
                        hint: 'Saqib Sizan',
                        textInputType: TextInputType.name),
                    NewsAppTextField(
                        title: 'Phone Number',
                        hint: '+88 (017) 40537161',
                        textInputType: TextInputType.phone),
                    NewsAppTextField(
                        title: 'Password', hint: '', obscure: true),
                    SizedBox(height: 20),
                    SizedBox(
                        height: 50,
                        width: 360,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFFF1582C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              'Sign Up',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ))),

                    SizedBox(height: 10),
                    Text('OR', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 10),

                    SizedBox(
                        height: 50,
                        width: 360,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF4285F4),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Image.asset('assets/images/google_logo.png'),
                                ),
                                Text(
                                  'Sign Up with Google',
                                  style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                                ),
                              ],
                            ))),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class NewsAppTextField extends StatelessWidget {
  NewsAppTextField(
      {super.key,
      required this.title,
      required this.hint,
      this.obscure = false,
      this.textInputType = TextInputType.text});

  String title;
  String hint;
  bool obscure;
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(title, style: TextStyle(fontSize: 16)),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(fontSize: 20, color: Colors.black),
          obscureText: obscure,
          obscuringCharacter: '*',
          keyboardType: textInputType,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(fontSize: 18),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.purple),
              ),
              suffixIcon: Icon(Icons.help_outline)),
        ),
      ],
    );
  }
}
