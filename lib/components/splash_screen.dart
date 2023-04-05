
import 'dart:async';

import 'package:e_food_cort/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenSate createState() => _SplashScreenSate();
}

class _SplashScreenSate extends State<SplashScreen> {

  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () { 
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return NavbarAppBar();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 500.0,
          height: 300.0,
        ),
      ),
    );
  }
}