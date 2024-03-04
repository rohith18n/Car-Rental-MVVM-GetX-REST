import 'dart:async';
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/language_selection/widget/custom_language.dart';
import 'package:car_rental/view/splash/SplashScreen_2.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:car_rental/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class PhoneVerificationScreen extends StatefulWidget {
  @override
  State createState() => _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen>
    with SingleTickerProviderStateMixin {
  String otps = '';
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                  minWidth: MediaQuery.of(context).size.width),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/splash1.png",
                      // height: 70,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Phone Verification',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Verify Code',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Please check your message and\nenter the verification code we just send you"
                            "\n(+91) 1234567890",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.beVietnamPro(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    buildVSpacer(30),
                    OTPTextField(
                        otpFieldStyle: OtpFieldStyle(
                          backgroundColor: Color(0xFFDDDDDD),
                        ),
                        controller: otpController,
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
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
                        }),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'OTP Not recieved ? ',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.beVietnamPro(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Resend',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.beVietnamPro(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    buildVSpacer(90),
                    CustomButton(
                      text: 'Submit',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AppBottomNavBar(),
                          ),
                        );
                      },
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

  _buildText({
    required String title,
    double? size,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.beVietnamPro(
              fontSize: size ?? 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
