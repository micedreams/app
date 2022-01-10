import 'package:flutter/material.dart';

import 'login.dart';
import 'home.dart';


void main() async {
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firebase Auth",
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        Login.routeName: (ctx) => Login(),
        Home.routeName: (ctx) => Home(),
      },
    );
  }
}