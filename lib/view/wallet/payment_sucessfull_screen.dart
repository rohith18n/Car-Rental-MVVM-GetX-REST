import 'dart:async';
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/language_selection/widget/custom_language.dart';
import 'package:car_rental/view/splash/SplashScreen_2.dart';
import 'package:car_rental/view/wallet/wallet.dart';
import 'package:car_rental/view/wallet/withdrawal3.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:car_rental/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class PaymentSucessfullScreen extends StatefulWidget {
  @override
  State createState() => _PaymentSucessfullScreenState();
}

class _PaymentSucessfullScreenState extends State<PaymentSucessfullScreen> {
  @override
  void initState() {
    super.initState();

    // Delay for 2 seconds and then navigate to the home screen
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => AppBottomNavBar(
                  index: 0,
                )), // Replace HomeScreen with your actual home screen widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Color(0xffEDB525),
        height: 1000,
        child: Column(
          children: [
            Lottie.asset(
              'assets/confirmtick.json', // Replace with your actual file path
              width: screenWidth,
              height: 200, // Adjust height as needed
              fit: BoxFit.cover,
            ),
            buildVSpacer(150),
            _buildTextHeader(
                title: 'You have successfully added\nRs. 5000',
                size: 20,
                fontWeight: FontWeight.w600),
            buildVSpacer(40),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: _buildTextHeader(
                  title: 'Our Customer Support\nteam will connect you\nSoon.',
                  size: 20,
                  fontWeight: FontWeight.w600),
            ),
            buildVSpacer(120),
          ],
        ),
      ),
    );
  }

  Widget _buildTextHeader(
      {required String title,
      double? size,
      FontWeight? fontWeight,
      Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: size ?? 14,
              fontWeight: fontWeight ?? FontWeight.w500,
              color: color ?? Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
