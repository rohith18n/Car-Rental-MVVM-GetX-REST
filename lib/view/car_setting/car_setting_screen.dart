import 'dart:ui';

import 'package:car_rental/view/car_setting/fastag_setting_screen.dart';
import 'package:car_rental/view/car_setting/invoice_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../widgets/app_widgets.dart';

class CarSettingScreen extends StatefulWidget {
  @override
  _CarSettingScreenState createState() => _CarSettingScreenState();
}

class _CarSettingScreenState extends State<CarSettingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xffEDB31B),
              child: Padding(
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
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Car Setting',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FastagSettingScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 15),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/Group.png'),
                                ),
                                _buildTextHeader(title: 'Fastag Setting'),
                                buildHSpacer(20),
                              ],
                            ),
                          ),
                          _buildText(
                              title:
                                  'Let your guests know if you provide FASTag\non your car'),
                          buildVSpacer(20)
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => InvoiceScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 15),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/Group.png'),
                                ),
                                _buildTextHeader(title: 'Invoice'),
                                buildHSpacer(20),
                              ],
                            ),
                          ),
                          _buildText(
                              title:
                                  'Let your guests know if you provide FASTag\non your car'),
                          buildVSpacer(20)
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(30),
          ],
        ),
      ),
    );
  }

  Widget _buildTextHeader({
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
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
          textAlign: TextAlign.center,
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
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
        ),
      ),
    );
  }
}
