import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Account Login'), leading: Icon(Icons.account_balance)),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Login Information',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              style: Theme.of(context).textTheme.headline5,
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: Theme.of(context).textTheme.headline5,
                  prefixIcon: Icon(
                    Icons.person_add,
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
              style: Theme.of(context).textTheme.headline5,
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: Theme.of(context).textTheme.headline5,
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {},
                child: Text(
                  'Log In',
                  style: Theme.of(context).textTheme.headline6,
                )),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 320,
            child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebookF,
                      size: 25,
                      color: Colors.indigo[900],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Login with facebook',
                      style: Theme.of(context).textTheme.headline6,
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
                onPressed: () {},
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.google,
                      size: 25,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Center(
                        child: Text('Login with Google',
                            style: Theme.of(context).textTheme.headline6)),
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              InkWell(
                onTap: () {},
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
