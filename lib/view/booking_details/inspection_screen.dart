import 'dart:ui';
import 'package:car_rental/view/booking_details/navigate_to_pickup.dart';
import 'package:car_rental/view/car_location/car_location_start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../widgets/app_widgets.dart';

class InspectionScreen extends StatefulWidget {
  @override
  _InspectionScreenState createState() => _InspectionScreenState();
}

class _InspectionScreenState extends State<InspectionScreen> {
  String selectedOption = ''; // Track the selected option

  void _showUploadBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
      ),
      backgroundColor: Color(0xff245196),
      builder: (context) {
        return Container(
          height: 150,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Upload the documents',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => InspectionScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffEDB31B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/camera.png'),
                          color: Colors.white,
                        ),
                        buildHSpacer(10),
                        Text(
                          'Click',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => InspectionScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffEDB31B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/gallery.png'),
                          color: Colors.white,
                        ),
                        buildHSpacer(10),
                        Text(
                          'Gallery',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
        child: Container(
          // width: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF245196),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Next',
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
            buildTopBar(),
            buildVSpacer(20),
            _buildText(
                title: 'Driver Side', fontWeight: FontWeight.bold, size: 17),
            buildInspectionItem('Rear Quarter Panel'),
            buildInspectionItem('Rear Tyre'),
            buildInspectionItem('Rear Door'),
            buildInspectionItem('Rear Window'),
            buildInspectionItem('Front Door'),
            buildInspectionItem('RearView Mirror'),
            buildInspectionItem('Front Window'),
            buildInspectionItem('Front Tyre'),
            buildInspectionItem('Front Quarter Panel'),
            _buildText(title: 'Rear', fontWeight: FontWeight.bold, size: 17),
            buildInspectionItem('Rear Windshield'),
            buildInspectionItem('Boot -Lid'),
            buildInspectionItem('Toll Lights'),
            buildInspectionItem('Rear Bumper'),
            _buildText(
                title: 'Passenger Side', fontWeight: FontWeight.bold, size: 17),
            buildInspectionItem('Front Quarter Panel'),
            buildInspectionItem('Front Tyre'),
            buildInspectionItem('Front Window'),
            buildInspectionItem('Front Door'),
            buildInspectionItem('Rear Window'),
            buildInspectionItem('Rear Door'),
            buildInspectionItem('Rear Tyre'),
            buildInspectionItem('Rear Quarter Panel'),
            buildInspectionItem('Rear View Mirror'),
            _buildText(title: 'Front', fontWeight: FontWeight.bold, size: 17),
            buildInspectionItem('Front Bumper'),
            buildInspectionItem('Bannet'),
            buildInspectionItem('Windsheld'),
            buildInspectionItem('Headlight'),
            buildVSpacer(30),
            _buildTextHeader(
                title: 'Other Damages', fontWeight: FontWeight.bold, size: 17),
            buildInspectionItem('Headlight'),
            GestureDetector(
                onTap: () {
                  _showUploadBottomSheet();
                },
                child: _buildTextHeader(
                    title: 'Add More',
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: Color(0xff245196))),
            buildVSpacer(30),
            _buildTextHeader(
                title: 'Other Charges', fontWeight: FontWeight.bold, size: 17),
            buildInspectionItem('Headlight'),
            GestureDetector(
                onTap: () {
                  _showUploadBottomSheet();
                },
                child: _buildTextHeader(
                    title: 'Add More',
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: Color(0xff245196))),
            buildVSpacer(30),
          ],
        ),
      ),
    );
  }

  Widget buildTopBar() {
    return Container(
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
                alignment: Alignment.center,
                child: Text(
                  'Inspection',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInspectionItem(String section) {
    return Column(
      children: [
        buildVSpacer(20),
        Row(
          children: [
            _buildText(
              title: section,
              size: 16,
            ),
            Spacer(),
            _buildText(title: 'In Good Condition'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _showUploadBottomSheet(); // Open the bottom sheet on image click
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset('assets/upload_image.png'),
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      buildOptionButton('Yes'),
                      buildHSpacer(10),
                      buildOptionButton('No'),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildOptionButton(String option) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = option; // Update the selected option
        });
      },
      child: Container(
        width: 63,
        height: 42,
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: selectedOption == option ? Color(0xFF245196) : Colors.white,
          shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 24,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Text(
          option,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: selectedOption == option ? Colors.white : Color(0xFF121212),
            fontSize: 12,
            fontFamily: 'Be Vietnam Pro',
            fontWeight: FontWeight.w500,
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
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: size ?? 15,
            fontWeight: fontWeight ?? FontWeight.w400,
            color: color ?? Colors.black,
          ),
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
            color: color ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
