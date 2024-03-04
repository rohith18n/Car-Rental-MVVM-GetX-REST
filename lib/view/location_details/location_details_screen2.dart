import 'package:car_rental/view/add_new_car/car_kyc.dart';
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:car_rental/view/location_details/confirm_location_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class LocationDetailsScreen2 extends StatefulWidget {
  @override
  _LocationDetailsScreen2State createState() => _LocationDetailsScreen2State();
}

class _LocationDetailsScreen2State extends State<LocationDetailsScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AppBottomNavBar(
                    index: 4,
                  ),
                ),
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
                'ADD NEW ADDRESS',
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
                        'My addresses',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _buildText(title: 'Location'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(
                  suffixIcon:
                      GestureDetector(onTap: () {}, child: Icon(Icons.edit))),
            ),
            _buildText(title: 'Location Name'),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: buildCustomTextField1()),
            _buildText(title: 'Parking Type'),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: buildCustomTextField1()),
            _buildText(title: 'Plot No/Block/Parking Slot No'),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: buildCustomTextField1()),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: buildCustomTextField1(
                    inputContainerHeight: 100, hintText: 'Direction to reach')),
            buildVSpacer(10),
            Image.asset('assets/parkingcar.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey, // Choose your border color
                    width: 1.0, // Choose your border width
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTextHeader(title: 'Add Parking spot photos'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildText({
    required String title,
    double? size,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.beVietnamPro(
              fontSize: size ?? 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextHeader({
    required String title,
    double? size,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.beVietnamPro(
              fontSize: size ?? 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
