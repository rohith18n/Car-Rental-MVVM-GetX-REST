import 'package:car_rental/view/add_new_car/address_proof.dart';
import 'package:car_rental/view/add_new_car/car_document_details.dart';
import 'package:car_rental/view/add_new_car/dl_car_details.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarKycScreen extends StatefulWidget {
  const CarKycScreen({super.key});

  @override
  _CarKycScreenState createState() => _CarKycScreenState();
}

class _CarKycScreenState extends State<CarKycScreen> {
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
                      child: const Icon(
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
                        'Car KYC',
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
                const Image(
                  image: AssetImage('assets/scanner.png'),
                  width: 200, // Set your desired width
                  height: 150, // Set your desired height
                ),
                buildVSpacer(22),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'Complete your Car KYC to Publish Car',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight
                              .w500, // Use the provided fontWeight or default to FontWeight.w500
                        ),
                      ),
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
                            color: const Color(
                                0xff245196), // Add your desired background color here
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  const Image(
                                      image:
                                          AssetImage('assets/Group 116.png')),
                                  Text(
                                    'Car  Document',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  const Image(
                                      image:
                                          AssetImage('assets/Group 116.png')),
                                  Text(
                                    'DL Card',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  const Image(
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
                      side: const BorderSide(color: Colors.white, width: 1.0),
                    ),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildVSpacer(30),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const CarDocumentDetails(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                const Image(
                                    image: AssetImage('assets/Group 114.png')),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Car Documents',
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
                                const Spacer(),
                                const Icon(
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
                                  builder: (context) => const DlCarDetails(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                const Image(
                                    image: AssetImage('assets/Group 112.png')),
                                buildHSpacer(10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'DL Card Details',
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
                                const Spacer(),
                                const Icon(
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
                                  builder: (context) => const AddressProof(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                const Image(
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
                                const Spacer(),
                                const Icon(
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
