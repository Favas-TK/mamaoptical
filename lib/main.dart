import 'package:flutter/material.dart';
import 'package:mama_optics/login/login.dart';
import 'package:mama_optics/signup/signup.dart';
import 'package:mama_optics/splash_screen/spalshscreen.dart';

import 'verifypage.dart/verifypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Login(),
        );
  }
}
