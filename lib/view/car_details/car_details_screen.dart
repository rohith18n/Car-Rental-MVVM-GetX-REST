import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class CarDetailsScreen extends StatefulWidget {
  @override
  _CarDetailsScreenState createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
                  Flexible(
                    child: Text(
                      'Car Details',
                      style: GoogleFonts.poppins(
                          fontSize: 17, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.white, width: 1.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Car License Number',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.038,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'DL45PQ12345',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Car Brand ',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.038,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Loren Epsom',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Car Model ',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.038,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'XM',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Car Variant',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.038,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Loren Epsom',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.white,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.white, width: 1.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fuel Type',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.038,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Petrol',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Transmission Type',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.038,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 9.0),
                                Text(
                                  'Manual',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Row(
              children: [
                _buildTextHeader(
                  title: 'Availability of car for booking',
                  size: 16,
                ),
                Spacer(),
                Transform.scale(
                  scale: 0.6, // Adjust the scale to modify the height
                  child: LiteRollingSwitch(
                    value: _switchValue,
                    textOn: '',
                    textOff: '',
                    colorOn: Color(0XFF6750A4),
                    colorOff: Color(0XFF6750A4),
                    iconOn: Icons.check,
                    iconOff: Icons.close,
                    textSize: 1.0,
                    width: 90, // Set the desired width
                    onChanged: (bool state) {
                      setState(() {
                        _switchValue = state;
                      });
                    },
                    onTap: () {},
                    onDoubleTap: () {},
                    onSwipe: () {},
                  ),
                ),
              ],
            ),
            buildVSpacer(10),
            Row(
              children: [
                _buildTextHeader(
                    title: 'Kilometers Driven by user',
                    size: 16,
                    fontWeight: FontWeight.w400),
                Spacer(),
                _buildTextHeader(
                  title: '12,765 Km',
                  size: 16,
                ),
              ],
            ),
            buildVSpacer(15),
            _buildTextHeader(
              title: 'Car images',
              size: 16,
            ),
            buildVSpacer(15),
            Container(
              height: 110, // Set the desired height of the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Replace carImages with your list of image URLs
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/car_thumbnail.png'), // Replace with your image URLs
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextHeader({
    required String title,
    double? size,
    FontWeight? fontWeight, // Added fontWeight parameter
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: size ?? 14,
            fontWeight: fontWeight ??
                FontWeight
                    .w500, // Use the provided fontWeight or default to FontWeight.w500
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
