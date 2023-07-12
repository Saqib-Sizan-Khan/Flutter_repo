import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginUI extends StatelessWidget {
  LoginUI({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
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
              controller: userNameController,
              style: Theme.of(context).textTheme.headline5,
              decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: Theme.of(context).textTheme.headline5,
                  prefixIcon: Icon(
                    Icons.person_add,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: passwordController,
              //obscureText: true,
              style: Theme.of(context).textTheme.headline5,
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: Theme.of(context).textTheme.headline5,
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  )),
            ),
          ),
          SizedBox(
            height: 60,
            width: 110,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: ()  {
                  FirebaseFirestore.instance.collection('loginInfo').add({
                    "Username" : userNameController.text,
                    "Password" : passwordController.text
                  });
                },
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
}
