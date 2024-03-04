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

class IncomeSummaryScreen extends StatefulWidget {
  @override
  _IncomeSummaryScreenState createState() => _IncomeSummaryScreenState();
}

class _IncomeSummaryScreenState extends State<IncomeSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Income Summary',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(
                            0xff245196), // Set your desired background color
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.white, // Set your desired icon color
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(
                          title: 'Total Income', fontWeight: FontWeight.w600),
                      buildVSpacer(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 18),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff245196),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextField(
                              maxLines: null,
                              minLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: '₹ 2000',
                                hintStyle: GoogleFonts.beVietnamPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                          // buildCustomTextField1(hintText: '₹ 2000'),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(
                          title: 'Current Balance',
                          fontWeight: FontWeight.w600),
                      buildVSpacer(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 18),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff245196),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextField(
                              maxLines: null,
                              minLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: '₹ 2000',
                                hintStyle: GoogleFonts.beVietnamPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                          // buildCustomTextField1(hintText: '₹ 2000'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            buildVSpacer(10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(
                          title: 'Total QC Point', fontWeight: FontWeight.w600),
                      buildVSpacer(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 18),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff245196),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextField(
                              maxLines: null,
                              minLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: '₹ 2000',
                                hintStyle: GoogleFonts.beVietnamPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                          // buildCustomTextField1(hintText: '₹ 2000'),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(
                          title: 'Current QC Point',
                          fontWeight: FontWeight.w600),
                      buildVSpacer(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 18),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xff245196),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextField(
                              maxLines: null,
                              minLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: '₹ 2000',
                                hintStyle: GoogleFonts.beVietnamPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                          // buildCustomTextField1(hintText: '₹ 2000'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            buildVSpacer(20),
            Image.asset('assets/incomesummary.png')
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
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
        ),
      ),
    );
  }
}
