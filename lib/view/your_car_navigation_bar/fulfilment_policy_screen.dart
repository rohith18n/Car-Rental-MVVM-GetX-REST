import 'dart:ui';

import 'package:car_rental/view/add_new_car/car_kyc.dart';
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:car_rental/view/host_offer/create_offer_screen2.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:car_rental/view/your_car_navigation_bar/create_offer2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class FulfilmentPolicyScreen extends StatefulWidget {
  @override
  _FulfilmentPolicyScreenState createState() => _FulfilmentPolicyScreenState();
}

class _FulfilmentPolicyScreenState extends State<FulfilmentPolicyScreen> {
  void _showUploadBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      builder: (context) {
        return Container(
          height: 550,
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(
                            30.0), // Add border radius for rounded corners
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.close,
                            color: Colors.white), // Set icon color to white
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Image.asset('assets/image 30.png')],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Color(0xff245196),
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
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Fulfilment Policy',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(20),
            _buildText(
                title: 'What is Fulfillment ?',
                size: 16.5,
                fontWeight: FontWeight.w600),
            buildVSpacer(8),
            _buildText(
                title:
                    'It’s your journey’s heartbeat-serving the bookings and\nensuring a good experience for the guests',
                fontWeight: FontWeight.w300),
            buildVSpacer(20),
            _buildText(
                title: 'Why does Fulfillment matters?',
                size: 16.5,
                fontWeight: FontWeight.w600),
            buildVSpacer(8),
            _buildText(
                title: '• Trust in Quarkcars', fontWeight: FontWeight.w300),
            _buildText(
                title: '• Mor Bookings & Earnings',
                fontWeight: FontWeight.w300),
            _buildText(
                title: '• Skyrocketing Positive ratings',
                fontWeight: FontWeight.w300),
            buildVSpacer(20),
            _buildText(
                title: 'Our Pledge', size: 16.5, fontWeight: FontWeight.w600),
            buildVSpacer(8),
            _buildText(
                title: 'It’s your journey’s heartbeat-serving the bookings and'
                    '\nensuring a good experience for the guests',
                fontWeight: FontWeight.w300),
            buildVSpacer(30),
            _buildText(
                title: 'Impact on You',
                size: 16.5,
                fontWeight: FontWeight.w600),
            buildVSpacer(30),
            Image.asset('assets/image 29.png'),
            buildVSpacer(50),
            GestureDetector(
              onTap: () {
                _showUploadBottomSheet();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey, // Set your desired border color
                      width: 1.0, // Set your desired border width
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildTextHeader(
                                      title: 'Checkout our cancellation policy',
                                      fontWeight: FontWeight.w400),
                                  _buildTextHeader(
                                      title: 'Click here',
                                      fontWeight: FontWeight.w300),
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
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
        ),
      ),
    );
  }
}
