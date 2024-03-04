import 'package:car_rental/view/add_car_feature/add_car_feature_screen.dart';
import 'package:car_rental/view/add_new_car/add_new_car_screen.dart';
import 'package:car_rental/view/add_new_car/upload_car_images.dart';
import 'package:car_rental/view/edit_profile/edit_profile_screen.dart';
import 'package:car_rental/view/frequently_asked_questions/faq_screen.dart';
import 'package:car_rental/view/help_and_support/help_and_support_screen.dart';
import 'package:car_rental/view/language_selection/language_section.dart';
import 'package:car_rental/view/policy/policy_screen.dart';
import 'package:car_rental/view/share_car_rental/modify_listing_screen.dart';
import 'package:car_rental/view/wallet/wallet.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:car_rental/view/your_car/your_car_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String selectedOption = ' '; // Initialize with a default value
  bool showShareOptions = false;
  bool showShareOptions1 = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const EditProfileScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 180,
                      color: const Color(0xff245196),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, bottom: 20, left: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0.0),
                              child: SizedBox(
                                  width: 80,
                                  height: 80,
                                  child:
                                      Image.asset('assets/profile_pic1.png')),
                            ),
                            buildHSpacer(10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Loren Epsom',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'LorenEpsom@gmail.com',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Sr.Manager',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '+91 999999999',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.5,
                                        color: Colors.white24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  buildHSpacer(10),
                                  Container(
                                    width: 92,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 8),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFEDB31B),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Edit Profile',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors
                                        .white, // Set the background color to white
                                  ),
                                  padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5), // Adjust the padding as needed
                                  child: const Icon(
                                    Icons.close,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  buildVSpacer(10),
                  buildVSpacer(20),
                  _buildTextHeader(
                      title: 'Your Car', fontWeight: FontWeight.w600, size: 18),
                  buildVSpacer(5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const YourCarScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        _buildTextHeader(
                          title: 'NEXON...... DL05PQ1235',
                          fontWeight: FontWeight.w500,
                          size: 15,
                        ),
                        const Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ModifyListingScreen(
                            initialTabIndex: 0,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/time.png'),
                          buildHSpacer(5),
                          _buildTextHeader(title: 'Your Listing', size: 16)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const WalletScreen1(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/wallet.png'),
                          buildHSpacer(5),
                          _buildTextHeader(title: 'Wallet', size: 16)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UploadCarImages(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/camera.png'),
                          buildHSpacer(5),
                          _buildTextHeader(
                              title: 'Upload your car images', size: 16)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AddCarFeatureScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/car_unselected.png'),
                          buildHSpacer(5),
                          _buildTextHeader(title: 'Add Car Feature', size: 16)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Image.asset('assets/locationdetails.png'),
                        buildHSpacer(5),
                        _buildTextHeader(title: 'Navigate to Car', size: 16)
                      ],
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AddNewCar(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/tickcar.png'),
                          buildHSpacer(5),
                          _buildTextHeader(title: 'Add another Car', size: 16)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showShareOptions = !showShareOptions;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/tickcar.png'),
                          buildHSpacer(5),
                          _buildTextHeader(
                              title: 'Share Your car\non Multiple Platforms',
                              size: 16),
                          const Spacer(),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                  if (showShareOptions)
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(
                              0.0), // Adjust border radius as needed
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  const Text('Rental'),
                                  const Spacer(),
                                  Transform.scale(
                                    scale:
                                        0.8, // Adjust the scale factor as needed
                                    child: Switch(
                                      value:
                                          true, // Replace with your own logic for switch state
                                      onChanged: (value) {
                                        // Handle switch state change
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.grey, // Divider color
                              thickness: 1.0, // Divider thickness
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  const Text('Subscription'),
                                  const Spacer(),
                                  Transform.scale(
                                    scale:
                                        0.8, // Adjust the scale factor as needed
                                    child: Switch(
                                      value:
                                          true, // Replace with your own logic for switch state
                                      onChanged: (value) {
                                        // Handle switch state change
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.grey, // Divider color
                              thickness: 1.0, // Divider thickness
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  const Text('Sharing'),
                                  const Spacer(),
                                  Transform.scale(
                                    scale:
                                        0.8, // Adjust the scale factor as needed
                                    child: Switch(
                                      value:
                                          true, // Replace with your own logic for switch state
                                      onChanged: (value) {
                                        // Handle switch state change
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              color: Colors.grey, // Divider color
                              thickness: 1.0, // Divider thickness
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  const Text('Government Tender'),
                                  const Spacer(),
                                  Transform.scale(
                                    scale:
                                        0.8, // Adjust the scale factor as needed
                                    child: Switch(
                                      value:
                                          true, // Replace with your own logic for switch state
                                      onChanged: (value) {
                                        // Handle switch state change
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showShareOptions1 = !showShareOptions1;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/tickcar.png'),
                          buildHSpacer(5),
                          _buildTextHeader(title: 'Other Services', size: 16),
                          const Spacer(),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                  if (showShareOptions1)
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey, // Border color
                            width: 1.0, // Border width
                          ),
                          borderRadius: BorderRadius.circular(
                              0.0), // Adjust border radius as needed
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  Text('Fastag Service'),
                                  // Spacer(),
                                  // Transform.scale(
                                  //   scale: 0.8, // Adjust the scale factor as needed
                                  //   child: Switch(
                                  //     value: true, // Replace with your own logic for switch state
                                  //     onChanged: (value) {
                                  //       // Handle switch state change
                                  //     },
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey, // Divider color
                              thickness: 1.0, // Divider thickness
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  Text('Car Insurance'),
                                  // Spacer(),
                                  // Transform.scale(
                                  //   scale: 0.8, // Adjust the scale factor as needed
                                  //   child: Switch(
                                  //     value: true, // Replace with your own logic for switch state
                                  //     onChanged: (value) {
                                  //       // Handle switch state change
                                  //     },
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey, // Divider color
                              thickness: 1.0, // Divider thickness
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  Text('Accessories'),
                                  // Spacer(),
                                  // Transform.scale(
                                  //   scale: 0.8, // Adjust the scale factor as needed
                                  //   child: Switch(
                                  //     value: true, // Replace with your own logic for switch state
                                  //     onChanged: (value) {
                                  //       // Handle switch state change
                                  //     },
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  buildVSpacer(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PolicyScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/book.png'),
                          buildHSpacer(5),
                          _buildTextHeader(title: 'Policies', size: 16)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LanguageSection(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/language01.png'),
                          buildHSpacer(5),
                          _buildTextHeader(title: 'Language', size: 16)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FAQScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/question.png'),
                          buildHSpacer(5),
                          _buildTextHeader(
                              title: 'Frequently Asked Questions', size: 15.5)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HelpAndSupportScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Image.asset('assets/help.png'),
                          buildHSpacer(5),
                          _buildTextHeader(title: 'Help and Support', size: 16)
                        ],
                      ),
                    ),
                  ),
                  buildVSpacer(25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Image.asset('assets/logout.png'),
                        buildHSpacer(5),
                        _buildTextHeader(title: 'Logout', size: 16)
                      ],
                    ),
                  ),
                  buildVSpacer(5),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: _buildTextHeader(
                        title: '1.0', fontWeight: FontWeight.w500, size: 13),
                  ),
                  buildVSpacer(5),
                  _buildTextHeader(
                      title: 'Version', fontWeight: FontWeight.w500, size: 13),
                  buildVSpacer(10),
                ],
              ),
            ),
          ),
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
