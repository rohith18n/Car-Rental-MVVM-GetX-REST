import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramDetailsScreen extends StatefulWidget {
  const ProgramDetailsScreen({super.key});

  @override
  _ProgramDetailsScreenState createState() => _ProgramDetailsScreenState();
}

class _ProgramDetailsScreenState extends State<ProgramDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color(0xffEDB31B),
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
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Program Details',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
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
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                        'assets/white_car.png'), // Set your desired height
                  ),
                  buildHSpacer(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(title: 'Nexon MT DL05PQ1234'),
                      _buildText(
                          title: '5 Seater', fontWeight: FontWeight.w400),
                    ],
                  )
                ],
              ),
            ),
            buildVSpacer(60),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                        'assets/bi_clock-fill.png'), // Set your desired height
                  ),
                  buildHSpacer(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(
                          title: 'Whiteboard Tenure',
                          fontWeight: FontWeight.w400),
                      _buildText(
                        title: '6th jul ‘23 to 7th jul ‘26',
                        size: 16,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 28,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF16A583),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '36 months',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Helvetica Neue',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                        'assets/Group 10736.png'), // Set your desired height
                  ),
                  buildHSpacer(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(
                          title: 'Fuel type', fontWeight: FontWeight.w400),
                      _buildText(
                        title: 'Diesel',
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                        'assets/Group 10737.png'), // Set your desired height
                  ),
                  buildHSpacer(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(
                          title: 'Transmission', fontWeight: FontWeight.w400),
                      _buildText(
                        title: 'Manual',
                        size: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                        'assets/Group 10738.png'), // Set your desired height
                  ),
                  buildHSpacer(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(title: 'GST', fontWeight: FontWeight.w400),
                      _buildText(
                        title: 'Not Registered',
                        size: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
            buildVSpacer(20),
          ],
        ),
      ),
    );
  }

  Widget _buildText({
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
            fontSize: size ?? 15,
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
