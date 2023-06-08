import 'dart:io';

class User {
  String? username;
  int ? password;

  //var users = ['Sizan', 'Saqib'];

  Map users = {
    'Sizan' : 12345,
    'Aqib' : 45678,
  };

  void login() {
    username = stdin.readLineSync();

    if (users.containsKey(username)) {
      print('User Found');
      password = int.parse(stdin.readLineSync()!);

      if (users[username] == password) {
        print('Login Successfull');
      }
      else {
        print('Password not match');
      }
    }
    else {
      print('User Not found');
    }
  }

  void logout() {
    print('Logout Succesfull');
  }
}