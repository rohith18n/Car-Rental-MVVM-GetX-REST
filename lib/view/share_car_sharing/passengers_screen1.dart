import 'package:car_rental/view/share_car_sharing/drop_off_screen.dart';
import 'package:car_rental/view/share_car_sharing/passengers_screen2.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class PassengerScreen extends StatefulWidget {
  @override
  _PassengerScreenState createState() => _PassengerScreenState();
}

class _PassengerScreenState extends State<PassengerScreen> {
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
                      builder: (context) => PassengerScreen2(),
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
                title: 'So how many passengers\ncan you take',
                size: 18,
                fontWeight: FontWeight.w600),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/minus.png',
                    width: 60,
                    height: 60,
                  ),
                  buildHSpacer(20),
                  _buildTextHeader(title: '3', size: 54),
                  buildHSpacer(20),
                  Image.asset('assets/plus.png'),
                ],
              ),
            ),
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
