import 'package:car_rental/view/add_new_car/car_kyc.dart';
import 'package:car_rental/view/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class AadharCardVerificationScreen extends StatefulWidget {
  @override
  _AadharCardVerificationScreenState createState() =>
      _AadharCardVerificationScreenState();
}

class _AadharCardVerificationScreenState
    extends State<AadharCardVerificationScreen> {
  String otps = '';
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Aadhar Card Details',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildVSpacer(82),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Enter the code',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .w600, // Use the provided fontWeight or default to FontWeight.w500
                    ),
                  ),
                ),
                buildVSpacer(20),
                buildVSpacer(30),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: OTPTextField(
                      otpFieldStyle: OtpFieldStyle(
                        backgroundColor: Color(0xFFDDDDDD),
                      ),
                      controller: otpController,
                      length: 6,
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
                ),
                buildVSpacer(50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF245196),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Verify OTP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                buildVSpacer(50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        side: BorderSide(
                          color: Color(0xFF245196),
                        ), // Add this line for border color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Resend',
                          style: TextStyle(
                            color: Color(0xFF245196),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
