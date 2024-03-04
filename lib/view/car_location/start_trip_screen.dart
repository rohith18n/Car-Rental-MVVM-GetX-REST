import 'dart:async';
import 'dart:ui';

import 'package:car_rental/view/car_location/trip_sucessfull_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import '../widgets/app_widgets.dart';

class StartTripScreen extends StatefulWidget {
  @override
  _StartTripScreenState createState() => _StartTripScreenState();
}

class _StartTripScreenState extends State<StartTripScreen> {
  String otps = '';
  OtpFieldController otpController = OtpFieldController();
  bool showLoading = false;

  @override
  void initState() {
    super.initState();
    // Delay for 5 seconds and then show the loading indicator
    Timer(Duration(seconds: 5), () {
      setState(() {
        showLoading = true;
      });
      // Delay for additional 5 seconds after showing the loading indicator
      Future.delayed(Duration(seconds: 5), () {
        // Navigate to the next screen here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                TripSucessfullScreen(), // Replace with the actual next screen
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildScreenContent(),
          if (showLoading) _buildLoadingIndicator(),
        ],
      ),
    );
  }

  Widget _buildScreenContent() {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(top: 400.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildText(title: 'To Start the Trip'),
              _buildText(title: 'Enter the pin shared by the user'),
              buildVSpacer(30),
              OTPTextField(
                otpFieldStyle: OtpFieldStyle(
                  backgroundColor: Colors.white,
                ),
                controller: otpController,
                length: 4,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldWidth: 50,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 8,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  otps = pin;
                  print("Changed: " + otps);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black.withOpacity(0.5),
      child: Center(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: 250,
            height: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Note: Please confirm the pin and start user Trip',
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                buildVSpacer(50),
                Lottie.asset(
                  'assets/loading.json', // Replace with your actual file path
                  width: 200,
                  height: 200, // Adjust height as needed
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText({
    required String title,
    double? size,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: size ?? 25,
            fontWeight: fontWeight ?? FontWeight.w600,
            color: color ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
