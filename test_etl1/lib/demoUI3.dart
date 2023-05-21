import 'package:flutter/material.dart';

class DemoUI3 extends StatelessWidget {

  const DemoUI3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Login'),
        leading: Icon(Icons.account_balance),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Login Information',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.person_add, color: Colors.lightBlue,),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 3, color: Colors.purple)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black12,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock, color: Colors.lightBlue,),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 3, color: Colors.purple)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
                onPressed: (){}, child: Text('Log In', style: TextStyle(fontSize: 20),)),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                ),
                onPressed: (){}, child: Row(
                  children: [
                    Icon(Icons.facebook_rounded),
                    SizedBox(width: 30,),
                    Text('Login with facebook', style: TextStyle(fontSize: 20),),
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: (){}, child: Row(
              children: [
                ,
                SizedBox(width: 30,),
                Text('Login with Google', style: TextStyle(fontSize: 20),),
              ],
            )),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: Text('Go to Registration', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),

        ],
      ),
    );
  }
}
