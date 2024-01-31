import 'package:flutter/material.dart';
import 'package:zainab_login/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: "login app",
     theme: ThemeData(
      primaryColor: Colors.blue,
     ),
      home: const Login(),
    );
  }
}

    