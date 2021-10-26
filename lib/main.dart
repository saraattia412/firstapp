import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'modules/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,//عشان يشيل العلامه الحمرا ال فوق

      home:LoginScreen(),
    );
  }
}


