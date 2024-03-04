import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/share_car_government_tendor/government_tendor1.dart';
import 'package:car_rental/view/share_car_rental/rental_screen.dart';
import 'package:car_rental/view/share_car_sharing/pick_up_screen.dart';
import 'package:car_rental/view/share_car_subscription/subscription1.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShareCarScreen extends StatefulWidget {
  const ShareCarScreen({super.key});

  @override
  _ShareCarScreenState createState() => _ShareCarScreenState();
}

class _ShareCarScreenState extends State<ShareCarScreen> {
  final bool _switchValue = false;

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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AppBottomNavBar(
                            index: 0,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Flexible(
                    child: Text(
                      'Share Car',
                      style: GoogleFonts.poppins(
                          fontSize: 17, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RentalScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    _buildTextHeader(title: "Rental"),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_right,
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 1.0,
              color: Colors
                  .grey, // Change the color to your desired underline color
              margin: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust the horizontal margin as needed
            ),
            buildVSpacer(40),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PickUpScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    _buildTextHeader(title: "Sharing"),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_right,
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 1.0,
              color: Colors
                  .grey, // Change the color to your desired underline color
              margin: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust the horizontal margin as needed
            ),
            buildVSpacer(40),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SubscriptionScreen1(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    _buildTextHeader(title: "Subscription"),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_right,
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 1.0,
              color: Colors
                  .grey, // Change the color to your desired underline color
              margin: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust the horizontal margin as needed
            ),
            buildVSpacer(40),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const GovernmentTendor1(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    _buildTextHeader(title: "Government Tendor"),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_right,
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 1.0,
              color: Colors
                  .grey, // Change the color to your desired underline color
              margin: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust the horizontal margin as needed
            ),
            buildVSpacer(90),
            _buildTextHeader(title: 'Coming Soon', size: 16),
            buildVSpacer(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  _buildTextHeader(title: "Tractor Rental"),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_right,
                    size: 25,
                  )
                ],
              ),
            ),
            Container(
              height: 1.0,
              color: Colors
                  .grey, // Change the color to your desired underline color
              margin: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust the horizontal margin as needed
            ),
            buildVSpacer(40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  _buildTextHeader(title: "Bike Rental"),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_right,
                    size: 25,
                  )
                ],
              ),
            ),
            Container(
              height: 1.0,
              color: Colors
                  .grey, // Change the color to your desired underline color
              margin: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust the horizontal margin as needed
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
