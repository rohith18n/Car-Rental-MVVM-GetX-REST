import 'package:car_rental/view/add_new_car/address_proof.dart';
import 'package:car_rental/view/add_new_car/car_document_details.dart';
import 'package:car_rental/view/add_new_car/dl_car_details.dart';
import 'package:car_rental/view/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:car_rental/view/wallet/topup.dart';
import 'package:car_rental/view/wallet/transfer1.dart';
import 'package:car_rental/view/wallet/wallet1.dart';
import 'package:car_rental/view/wallet/withdrawal.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import '../settings/settings_screen.dart';

class HelpAndSupportScreen extends StatefulWidget {
  @override
  _HelpAndSupportScreenState createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () async {},
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFEDB31B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SettingsScreen(),
                        ),
                      );
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
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Contact Us',
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
            _buildTextHeader(
                title: 'Welcome to the help center',
                fontWeight: FontWeight.bold),
            buildVSpacer(15),
            _buildTextHeader(
                title: 'Please describe the problem\nattach field if needed',
                fontWeight: FontWeight.w300),
            buildVSpacer(30),
            _buildText(title: 'Mobile No.'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(),
            ),
            buildVSpacer(15),
            _buildText(title: 'Email ID'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(),
            ),
            buildVSpacer(15),
            _buildText(title: 'Message'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(inputContainerHeight: 150),
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
        alignment: Alignment.center,
        child: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildText(
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
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
