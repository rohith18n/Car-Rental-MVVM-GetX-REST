import 'dart:async';
import 'package:flutter/material.dart';

import '../language_selection/LanguageScreen.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    animationController.forward();
    super.initState();
    Timer(const Duration(seconds: 4), () {
      // Navigate to the next screen using Navigator
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LanguageScreen(), // Replace NextScreen with the actual screen you want to navigate to
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                // color: AllCoustomTheme.getThemeData().primaryColor,
              ),
              constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height, minWidth: MediaQuery.of(context).size.width),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/splash2.png",
                      height: 800,
                      width: 500,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
