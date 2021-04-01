import 'package:flutter/material.dart';
import 'package:searchbarflutter/Screens/HomePage.dart';

class LoginApi {
  doLogin(
      {BuildContext context,
      String phoneNo,
      String password,
      bool rememberMe}) {
    if (phoneNo == '099' && password == 'hama') {
      print('access');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      print('wrong password or wrong number');
    }
  }
}
