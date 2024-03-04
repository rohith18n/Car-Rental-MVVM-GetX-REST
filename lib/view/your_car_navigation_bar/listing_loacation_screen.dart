
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListingLocationScreen extends StatefulWidget {
  const ListingLocationScreen({super.key});

  @override
  _ListingLocationScreenState createState() => _ListingLocationScreenState();
}

class _ListingLocationScreenState extends State<ListingLocationScreen> {
  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;

        return Dialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Set the border radius to 0
          ),
          child: Container(
            color: Colors.white,
            height: 270,
            width: screenWidth,
            padding: const EdgeInsets.all(13.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildVSpacer(20),
                const Text(
                  'Congratulations !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Be Vietnam Pro',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                buildVSpacer(20),
                const Text(
                  'You will start getting bookings soon,\nEnsure your car is clean.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Be Vietnam Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 40),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AppBottomNavBar(
                              index: 2,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff245196),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
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
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              _showCongratulationsDialog();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff245196),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Confirm & Share',
                style: TextStyle(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color(0xff245196),
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
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Listing Location',
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
            Padding(
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
                            const Image(
                              image: AssetImage(
                                  'assets/house.png'), // Set your desired height
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildTextHeader(
                                    title: 'MAHAL',
                                    fontWeight: FontWeight.w500),
                                _buildTextHeader(
                                    title: 'F48,Jaipur',
                                    fontWeight: FontWeight.w300),
                                buildVSpacer(5),
                                Row(
                                  children: [
                                    _buildTextHeader(
                                        title: 'Edit',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green),
                                    _buildTextHeader(
                                        title: 'Delete',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
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
                            const Image(
                              image: AssetImage(
                                  'assets/house.png'), // Set your desired height
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildTextHeader(
                                    title: 'VIRAR',
                                    fontWeight: FontWeight.w500),
                                _buildTextHeader(
                                    title: 'F48,Jaipur',
                                    fontWeight: FontWeight.w300),
                                buildVSpacer(5),
                                Row(
                                  children: [
                                    _buildTextHeader(
                                        title: 'Edit',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green),
                                    _buildTextHeader(
                                        title: 'Delete',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
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
                            const Image(
                              image: AssetImage(
                                  'assets/house.png'), // Set your desired height
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildTextHeader(
                                    title: 'KGF', fontWeight: FontWeight.w500),
                                _buildTextHeader(
                                    title: 'F48,Jaipur',
                                    fontWeight: FontWeight.w300),
                                buildVSpacer(5),
                                Row(
                                  children: [
                                    _buildTextHeader(
                                        title: 'Edit',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green),
                                    _buildTextHeader(
                                        title: 'Delete',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
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
                            const Image(
                              image: AssetImage(
                                  'assets/house.png'), // Set your desired height
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildTextHeader(
                                    title: 'WAYNAD',
                                    fontWeight: FontWeight.w500),
                                _buildTextHeader(
                                    title: 'F48,Jaipur',
                                    fontWeight: FontWeight.w300),
                                buildVSpacer(5),
                                Row(
                                  children: [
                                    _buildTextHeader(
                                        title: 'Edit',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green),
                                    _buildTextHeader(
                                        title: 'Delete',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
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
                            const Image(
                              image: AssetImage(
                                  'assets/house.png'), // Set your desired height
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildTextHeader(
                                    title: 'KOLAR',
                                    fontWeight: FontWeight.w500),
                                _buildTextHeader(
                                    title: 'F48,Jaipur',
                                    fontWeight: FontWeight.w300),
                                buildVSpacer(5),
                                Row(
                                  children: [
                                    _buildTextHeader(
                                        title: 'Edit',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.green),
                                    _buildTextHeader(
                                        title: 'Delete',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            _buildText(
                title: 'Select Your Car Location',
                size: 17,
                fontWeight: FontWeight.w500),
            buildVSpacer(15),
            Image.asset('assets/map.png'),
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
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
