import 'dart:async';
import 'package:car_rental/view/splash/SplashScreen_2.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    animationController.forward();

    // Set a timer to navigate to the next screen after 3 seconds (adjust the duration as needed)
    Timer(const Duration(seconds: 4), () {
      // Navigate to the next screen using Navigator
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              const SplashScreen2(), // Replace NextScreen with the actual screen you want to navigate to
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                // color: AllCoustomTheme.getThemeData().primaryColor,
                ),
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
                minWidth: MediaQuery.of(context).size.width),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/splash1.png",
                    // height: 70,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
