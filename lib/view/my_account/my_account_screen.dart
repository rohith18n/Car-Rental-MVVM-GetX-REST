
import 'package:car_rental/view/account_setting/account_setting_screen.dart';
import 'package:car_rental/view/add_new_car/car_kyc.dart';
import 'package:car_rental/view/car_setting/car_setting_screen.dart';
import 'package:car_rental/view/edit_profile/edit_profile_screen.dart';
import 'package:car_rental/view/host_offer/create_offer_screen.dart';
import 'package:car_rental/view/income_summary/income_summary.dart';
import 'package:car_rental/view/location_details/location_details_screen.dart';
import 'package:car_rental/view/pricing_control/pricing_control_screen.dart';
import 'package:car_rental/view/program_details/program_details_screen.dart';
import 'package:car_rental/view/refer_and_earn/refer_and_earn_screen.dart';
import 'package:car_rental/view/user_kyc/user_kyc_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  bool showShareOptions2 = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EditProfileScreen(),
                  ),
                );
              },
              child: Container(
                color: const Color(0xffEDB31B),
                child: Padding(
                  padding: const EdgeInsets.only(top: 70, bottom: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset('assets/profile_pic.png')),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Loren Epsom',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'abc123@gmail.com',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '8686868686',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserKycScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/hostkyc.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Host KYC'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CarKycScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/carkyc.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Car KYC'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LocationDetailsScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/locationdetails.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Location Details'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProgramDetailsScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/programdetails.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Program Details'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ReferAndEarnScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/refer.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Refer & Earn'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const IncomeSummaryScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/income.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Income Summary'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                setState(() {
                  showShareOptions2 = !showShareOptions2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/community.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'My Community'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            if (showShareOptions2)
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
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: [
                            Text('Direct Referal List'),
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
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: [
                            Text('My Downline List'),
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
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: [
                            Text('My Team Business Report'),
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
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: [
                            Text('Royality/ Reward Eligibility'),
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
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AccountSetingScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/settings.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Account Setting'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PricingControlScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/income.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Pricing Control'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CreateOfferScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/hostoffer.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Host Offer'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Container(
              width: 340,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFDFDFDF),
                  ),
                ),
              ),
            ),
            buildVSpacer(8),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CarSettingScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset('assets/carsettings.png'),
                    ),
                    buildHSpacer(25),
                    _buildText(title: 'Car Setting'),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
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
      padding: const EdgeInsets.only(top: 18.0),
      child: Center(
        child: Align(
          alignment: Alignment.centerLeft,
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
