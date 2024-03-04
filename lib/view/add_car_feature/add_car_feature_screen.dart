import 'dart:ui';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_checkBox_widget.dart';

class AddCarFeatureScreen extends StatefulWidget {
  @override
  _AddCarFeatureScreenState createState() => _AddCarFeatureScreenState();
}

class _AddCarFeatureScreenState extends State<AddCarFeatureScreen> {
  bool optionSelected = false;
  List<String> features = [
    'Airbags',
    'Spare Tyres',
    'Power Windows',
    'Power steering',
    'Music System',
    'Air Conditioning',
    'Air freshener',
    'Sunroof',
    'Toolkit',
    'Aux Input',
    'Aux Cable',
    'Bluetooth',
    'Reverse Camera',
    'Child Seat',
    'Pet Friendly',
    'USB Charger',
    'Carrier on top',
    'Full Boot Space',
    'Electric ORVM',
    'Keyless Entry',
    'Push Button Start',
    'ADAS',
    'Anti-lock bracking System',
    'Cruise Control',
    'Panoramic Sunroof',
    'Traction Control',
    'Voice Control',
    'Air Purifier',
    'Ventilated Front Seat',
    '360 view camera',
    'Panoramic Sunroof'
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    List<Widget> customCheckboxWidgets = features.map((feature) {
      return CustomCheckboxWidget(
        text: feature,
        onChanged: (value) {
          setState(() {
            optionSelected = value;
          });
        },
        initialValue: optionSelected,
      );
    }).toList();

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Show dialog upon clicking the Save button
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 900,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Text(
                                  'Your Car Feature has been\nSccessfully Added',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 40.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .black, // Set your desired background color here
                                      borderRadius: BorderRadius.circular(
                                          20.0), // Optional: Add border radius for a rounded background
                                    ),
                                    padding: EdgeInsets.all(
                                        8.0), // Optional: Add padding inside the container
                                    child: Icon(
                                      Icons.close,
                                      size: 15,
                                      color: Colors.white, // Set the icon color
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFEDB31B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Save',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                          'Add Car Feature',
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
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(
                        'assets/white_car.png'), // Set your desired height
                  ),
                  buildHSpacer(50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(title: 'Ecosport', size: 16),
                      _buildTextHeader(title: 'RJ45CG578', size: 16),
                      buildVSpacer(10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _buildTextHeader(
                              title: 'More car information here',
                              fontWeight: FontWeight.w400),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.yellow,
                            size: 20,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            buildVSpacer(30),
            _buildTextHeader(title: 'Add Car Feature'),
            Row(
              children: [
                _buildText(title: 'Total Airbags'),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    width: 100,
                    height: 27,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 100,
                            height: 27,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFEDB31B)),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 26,
                          top: 1,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 25,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFEDB31B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 74,
                          top: 1,
                          child: Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, 0.0)
                              ..rotateZ(1.57),
                            child: Container(
                              width: 25,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFFEDB31B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 46,
                          top: 6,
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 0.28,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 83,
                          top: 6,
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: Color(0xFFEDB31B),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 0.28,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 11,
                          top: 6,
                          child: Text(
                            '-',
                            style: TextStyle(
                              color: Color(0xFFEDB31B),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            buildVSpacer(20),
            _buildTextHeader(title: 'Please select your available car feature'),
            ...customCheckboxWidgets,
            buildVSpacer(10),
            _buildTextHeader(
                title: 'Describe your car', fontWeight: FontWeight.w600),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(right: 80.0),
              child: _buildTextHeader(
                title:
                    'Tell your guests about your car and its uniqueness! This will help the guest to choose the car',
                color: Color(0xff0D73C9),
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      height: 198,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFADADAD)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: _buildTextHeader(
                          title:
                              'Korem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar.',
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ),
            buildVSpacer(10),
            Container(
                width: double.infinity,
                height: 198,
                color: Color(0xffFFF9E3),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 10),
                      child: Row(
                        children: [
                          Image.asset('assets/safetytick.png'),
                          _buildTextHeader(
                              title:
                                  'Safety device are not yet installed\non your car',
                              size: 20,
                              fontWeight: FontWeight.bold)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22.0),
                      child: Column(
                        children: [
                          _buildTextHeader(
                              title:
                                  '\u2022 You will have to choose the car & serve booking without the safety device',
                              fontWeight: FontWeight.w400,
                              size: 15),
                          _buildTextHeader(
                              title: '\u2022 Won’t be able to track the car',
                              fontWeight: FontWeight.w400,
                              size: 15),
                          _buildTextHeader(
                              title:
                                  '\u2022 Won’t able to lock or unlock the device',
                              fontWeight: FontWeight.w400,
                              size: 15),
                        ],
                      ),
                    ),
                  ],
                )),
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

  Widget _buildText(
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
              fontSize: size ?? 14,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
