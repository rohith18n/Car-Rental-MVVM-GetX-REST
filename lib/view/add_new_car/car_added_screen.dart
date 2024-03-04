import 'package:car_rental/view/add_new_car/upload_car_images.dart';
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:car_rental/view/add_new_car/car_kyc.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class CarAddedScreen extends StatefulWidget {
  @override
  _CarAddedScreenState createState() => _CarAddedScreenState();
}

class _CarAddedScreenState extends State<CarAddedScreen> {
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
                      'Car Added',
                      style: GoogleFonts.poppins(
                          fontSize: 17, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Congratulations on adding ',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight
                              .w500, // Use the provided fontWeight or default to FontWeight.w500
                        ),
                      ),
                      Text(
                        'Car Successfully',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight
                              .w500, // Use the provided fontWeight or default to FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('assets/car.png'),
                  width: 200, // Set your desired width
                  height: 150, // Set your desired height
                ),
                buildVSpacer(22),
                _buildTextHeader(
                    title: 'What next', size: 18, fontWeight: FontWeight.w600),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/camera.png'),
                      ),
                      _buildTextHeader(title: 'Add Images'),
                    ],
                  ),
                ),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/timer.png'),
                      ),
                      _buildTextHeader(
                          title: 'Share Your car by creating listing'),
                    ],
                  ),
                ),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/money.png'),
                      ),
                      _buildTextHeader(title: 'Get bokings and start earning'),
                    ],
                  ),
                ),
                buildVSpacer(70),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CarKycScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFEDB31B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Car KYC',
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
                buildVSpacer(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => UploadCarImages(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFEDB31B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Upload Car Images',
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
                buildVSpacer(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AppBottomNavBar(
                              index: 0,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFEDB31B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Home',
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
              ],
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
          style: GoogleFonts.beVietnamPro(
            fontSize: size ?? 14,
            fontWeight: fontWeight ??
                FontWeight
                    .w500, // Use the provided fontWeight or default to FontWeight.w500
          ),
        ),
      ),
    );
  }
}
