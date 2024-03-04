import 'package:car_rental/view/share_car_sharing/drop_off_screen.dart';
import 'package:car_rental/view/share_car_sharing/passengers_screen1.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

import 'passengers_screen3.dart';

class PassengerScreen2 extends StatefulWidget {
  @override
  _PassengerScreen2State createState() => _PassengerScreen2State();
}

class _PassengerScreen2State extends State<PassengerScreen2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 120,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PassengerScreen3(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff245196), // Background color
                ),
                child: Text(
                  'Go',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20, left: 10),
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
                  SizedBox(width: 24),
                ],
              ),
            ),
            _buildTextHeader(
                title: 'Enable Instant Booking for\nYour Passengers',
                size: 18,
                fontWeight: FontWeight.w600),
            buildVSpacer(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                children: [
                  _buildTextHeader(
                      title: 'More convenience',
                      size: 18,
                      fontWeight: FontWeight.w600),
                  _buildTextHeader(
                      title:
                          'No need  to review every passenger’s request before it expires',
                      size: 14,
                      fontWeight: FontWeight.w400),
                ],
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                children: [
                  _buildTextHeader(
                      title: 'More convenience',
                      size: 18,
                      fontWeight: FontWeight.w600),
                  _buildTextHeader(
                      title:
                          'No need  to review every passenger’s request before it expires',
                      size: 14,
                      fontWeight: FontWeight.w400),
                ],
              ),
            ),
            buildVSpacer(50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  _buildTextHeader(
                      title: 'Enable Instant Booking',
                      color: Color(0xff245196),
                      size: 18),
                  Spacer(),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
            buildVSpacer(5),
            Container(
              width: 358,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  _buildTextHeader(
                      title:
                          'Review every passenger’s request before it expires',
                      size: 12),
                  Spacer(),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
            buildVSpacer(20),
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
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: size ?? 14,
              fontWeight: fontWeight ?? FontWeight.w500,
              color: color ?? Colors.black),
        ),
      ),
    );
  }
}
