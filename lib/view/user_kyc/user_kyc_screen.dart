import 'package:car_rental/view/add_new_car/address_proof.dart';
import 'package:car_rental/view/add_new_car/car_document_details.dart';
import 'package:car_rental/view/add_new_car/dl_car_details.dart';
import 'package:car_rental/view/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:car_rental/view/user_kyc/aadhar_card_details_screen.dart';
import 'package:car_rental/view/user_kyc/address_proof_screen.dart';
import 'package:car_rental/view/user_kyc/bank_details_screen.dart';
import 'package:car_rental/view/user_kyc/pan_card_details_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class UserKycScreen extends StatefulWidget {
  @override
  _UserKycScreenState createState() => _UserKycScreenState();
}

class _UserKycScreenState extends State<UserKycScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
                      alignment: Alignment.center,
                      child: Text(
                        'User KYC',
                        style: GoogleFonts.poppins(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
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
                Image(
                  image: AssetImage('assets/scanner.png'),
                  width: 200, // Set your desired width
                  height: 150, // Set your desired height
                ),
                buildVSpacer(22),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      // Text(
                      //   'Complete your Car KYC to Publish Car',
                      //   style: GoogleFonts.poppins(
                      //     fontSize: 17,
                      //     fontWeight: FontWeight
                      //         .w500, // Use the provided fontWeight or default to FontWeight.w500
                      //   ),
                      // ),
                      Text(
                        'Documents required for KYC',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight
                              .w400, // Use the provided fontWeight or default to FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
                buildVSpacer(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          decoration: BoxDecoration(
                            color: Color(
                                0xff245196), // Add your desired background color here
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image(
                                      image:
                                          AssetImage('assets/Group 116.png')),
                                  Text(
                                    'Aadhaar Card',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Image(
                                      image:
                                          AssetImage('assets/Group 116.png')),
                                  Text(
                                    'PAN Card',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Image(
                                      image:
                                          AssetImage('assets/Group 116.png')),
                                  Text(
                                    'Address proof',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Card(
                    color: Colors.white,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.white, width: 1.0),
                    ),
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildVSpacer(30),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      AadharCardDetailsScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/Group 114.png')),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Aadhaar Card Details',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.038,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Tap here to fill the details',
                                      style: TextStyle(
                                        fontSize: screenWidth *
                                            0.028, // Adjust the font size as needed
                                        fontWeight: FontWeight
                                            .w500, // Adjust the font weight as needed
                                        color: Colors
                                            .grey, // Adjust the color as needed
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                          buildVSpacer(20),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PanCardDetailsScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/Group 112.png')),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'PAN Card Details',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.038,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Tap here to fill the details',
                                      style: TextStyle(
                                        fontSize: screenWidth *
                                            0.028, // Adjust the font size as needed
                                        fontWeight: FontWeight
                                            .w500, // Adjust the font weight as needed
                                        color: Colors
                                            .grey, // Adjust the color as needed
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                          buildVSpacer(20),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AddressProofScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/Group 115.png')),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Address Details',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.038,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Tap here to fill the details',
                                      style: TextStyle(
                                        fontSize: screenWidth *
                                            0.028, // Adjust the font size as needed
                                        fontWeight: FontWeight
                                            .w500, // Adjust the font weight as needed
                                        color: Colors
                                            .grey, // Adjust the color as needed
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                          buildVSpacer(20),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => BankDetailsScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/bankcheque.png')),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bank Details',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.038,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Tap here to fill the details',
                                      style: TextStyle(
                                        fontSize: screenWidth *
                                            0.028, // Adjust the font size as needed
                                        fontWeight: FontWeight
                                            .w500, // Adjust the font weight as needed
                                        color: Colors
                                            .grey, // Adjust the color as needed
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                          buildVSpacer(15),
                        ],
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
}
