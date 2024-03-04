
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_widgets.dart';

class InvoiceDetailsScreen extends StatefulWidget {
  const InvoiceDetailsScreen({super.key});

  @override
  _InvoiceDetailsScreenState createState() => _InvoiceDetailsScreenState();
}

class _InvoiceDetailsScreenState extends State<InvoiceDetailsScreen> {
  final bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120.0, vertical: 20),
        child: Container(
          // width: 50,
          child: ElevatedButton(
            onPressed: (){
              Navigator.pop(context);

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF245196),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Back',
                style: GoogleFonts.poppins(
                  color: Colors.white,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
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
                        child: const Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: Color(0xff245196),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Invoice Details',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff245196),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(title: 'User Details', color: const Color(0xff245196), ),
                      buildVSpacer(10),
                      Row(
                        children: [
                          const Image(
                            image: AssetImage('assets/profile_pic.png'), width: 70, height: 70,
                          ),
                          buildHSpacer(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildText(title: 'Loren Epsom', color: const Color(0xff245196), fontWeight: FontWeight.w600, size: 17 ),
                              buildVSpacer(3),
                              _buildText(title: '8956454646', color: const Color(0xff245196),fontWeight: FontWeight.w600 , size: 16 ),
                              buildVSpacer(3),
                              _buildText(title: 'sector 66, lane no 2, mamura, noida\nutter pradesh',
                                color: const Color(0xff245196), fontWeight: FontWeight.w300 ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(title: 'Trip Details', color: const Color(0xff245196), ),
                      buildVSpacer(10),
                      Row(
                        children: [
                          const Column(
                            children: [
                              Image(
                                image: AssetImage('assets/blue_location.png'),
                              ),
                              Dash(
                                  direction: Axis.vertical,
                                  length: 69,
                                  dashLength: 5,
                                  dashColor: Colors.grey),
                              Image(
                                image: AssetImage('assets/red_location.png'),
                              ),

                            ],
                          ),
                          buildHSpacer(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildText(title: 'Pick up point      10:30 AM', color: const Color(0xff245196), fontWeight: FontWeight.w600, size: 17 ),
                              buildVSpacer(3),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: _buildText(title: 'sector 66, lane no 2, mamura, noida\nutter pradesh',size: 13,
                                    color: const Color(0xff245196), fontWeight: FontWeight.w300 ),
                              ),
                              buildVSpacer(15),
                              _buildText(title: 'Dropping point', color: const Color(0xff245196), fontWeight: FontWeight.w600, size: 17 ),
                              buildVSpacer(3),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: _buildText(title: 'sector 66, lane no 2, mamura, noida\nutter pradesh',size: 13,
                                    color: const Color(0xff245196), fontWeight: FontWeight.w300 ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildText(title: 'Total Fair',color: const Color(0xff245196),),
                      const Spacer(),
                      _buildTextHeader(title: '₹8900', size: 18,fontWeight: FontWeight.bold, color: const Color(0xff245196),)
                    ],
                  ),
                  buildVSpacer(10),
                  _buildText(title: 'Paid via UPI ref no #121324234234', size: 13,fontWeight: FontWeight.w400, color: const Color(0xff245196),),
                ],
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
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
