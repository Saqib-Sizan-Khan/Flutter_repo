import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF241F33),
      appBar: AppBar(
        title: Text('Account Login'),
        leading: Icon(Icons.account_balance),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Login Information',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                  prefixIcon: Icon(
                    Icons.person_add,
                    color: Colors.lightBlue,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white, fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.lightBlue, fontSize: 20),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.lightBlue,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.lightBlue,),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(width: 3, color: Colors.lightBlue)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(
            height: 60,
            width: 110,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 20),
                )),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 320,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebookF,
                      size: 25,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Login with facebook',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 320,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.google,
                      size: 25,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Center(
                        child: Text('Login with Google',
                            style: TextStyle(
                              fontSize: 20,
                            ))),
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Need a new account? Go to ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              InkWell(
                onTap: (){},
                child: Text('Registration',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
