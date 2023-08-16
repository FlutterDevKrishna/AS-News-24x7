import 'package:as24x7/Home/Dashboard.dart';
import 'package:as24x7/ViewModel/TimeViewModel.dart';
import 'package:as24x7/openingscreen/SplashScreen.dart';
import 'package:as24x7/user%20login_signup/login.dart';
import 'package:as24x7/user%20login_signup/otp_login.dart';
import 'package:as24x7/user%20login_signup/signup.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'A S 24X7',
      theme: ThemeData(
        primaryColor: Colors.indigo.shade700,
      ),
      home: Dashboard(),
    );
  }
}
