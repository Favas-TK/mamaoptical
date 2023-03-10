import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 105, 42, 42),
      body: Center(
        child: Image.asset("assets/logo/WhatsAppImage.png"),
      ),
    );
  }
}
