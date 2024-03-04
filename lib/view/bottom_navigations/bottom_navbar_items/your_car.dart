import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:car_rental/view/your_car/your_car_screen.dart';
import 'package:car_rental/view/your_car_navigation_bar/add_bio_screen.dart';
import 'package:car_rental/view/your_car_navigation_bar/car_rating_screen.dart';
import 'package:car_rental/view/your_car_navigation_bar/create_offer1.dart';
import 'package:car_rental/view/your_car_navigation_bar/fastag_screen.dart';
import 'package:car_rental/view/your_car_navigation_bar/fulfilment_policy_screen.dart';
import 'package:car_rental/view/your_car_navigation_bar/listing_loacation_screen.dart';
import 'package:car_rental/view/your_car_navigation_bar/modify_listing.dart';
import 'package:car_rental/view/your_car_navigation_bar/setup_doorstep_delivery_screen.dart';
import 'package:car_rental/view/your_car_navigation_bar/upload_your_car_images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            child: Column(
              children: [
                Container(
                  color: Color(0xff245196),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 70, bottom: 20, left: 5),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Image.asset(
                            'assets/menu.png',
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => YourCarScreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              _buildTextHeader(
                                title: 'NEXON...... DL05PQ1235',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                size: 15,
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                buildVSpacer(20),
                Image.asset('assets/Group 10935.png'),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: _buildTextHeader(
                      title:
                          'Unlock more bookings by optimizing your profile wiith our recommendation',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),

            // Your content goes here
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Card(
                elevation: 5,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        _buildText(
                            title: 'Improve your car profile and sharing',
                            size: 13,
                            fontWeight: FontWeight.w500),
                        buildVSpacer(20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => UploadYourCarImages(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/card2.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Add Car Images',
                                        size: 14,
                                        fontWeight: FontWeight.w500),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AddBioScreen(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/card1.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Add Bio',
                                        size: 14,
                                        fontWeight: FontWeight.w500),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SetupDoorStepDelivery(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/home1.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Setup Doorstep Delivery',
                                        size: 14,
                                        fontWeight: FontWeight.w500),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FastagScreen(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/fastag1.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        _buildText(
                                            title: 'Fastag',
                                            size: 14,
                                            fontWeight: FontWeight.w500),
                                        Text(
                                          'Active',
                                          style: GoogleFonts.beVietnamPro(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff258E00)),
                                        ),
                                      ],
                                    ),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CreateOffer1(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/tag.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: '1 Active Host Offer',
                                        size: 14,
                                        fontWeight: FontWeight.w500),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(25),
                        _buildText(
                            title: 'Car Listing Settings & Ratings',
                            size: 13,
                            fontWeight: FontWeight.w500),
                        buildVSpacer(30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ListingLocationScreen(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/car_pin.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Add Car Location',
                                        size: 14,
                                        fontWeight: FontWeight.w500),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ModifyListing(
                                  initialTabIndex: 0,
                                ),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/cal.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        _buildText(
                                            title: 'Car Listed From',
                                            size: 14,
                                            fontWeight: FontWeight.w500),
                                        Text(
                                          '01 Aug - 31 Oct',
                                          style: GoogleFonts.beVietnamPro(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff258E00)),
                                        ),
                                      ],
                                    ),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CarRatingScreen(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/star1.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Ratings',
                                        size: 14,
                                        fontWeight: FontWeight.w500),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FulfilmentPolicyScreen(),
                              ),
                            );
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/check_book.png'), // Set your desired height
                                ),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Checkout our Policy',
                                        size: 14,
                                        fontWeight: FontWeight.w500),
                                    buildVSpacer(10),
                                    _buildText(
                                        title:
                                            'Unlock more bookings by optimizing your\nprofile wiith our recommendation',
                                        size: 13,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(30),
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

  Widget _buildText({
    required String title,
    double? size,
    FontWeight? fontWeight,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: GoogleFonts.beVietnamPro(
              fontSize: size ?? 16,
              fontWeight: fontWeight ?? FontWeight.w400,
            ),
          ),
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
}
