
import 'package:car_rental/view/booking_details/inspection_screen.dart';
import 'package:car_rental/view/booking_details/navigate_to_pickup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_widgets.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({super.key});

  @override
  _BookingDetailsScreenState createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  final bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                          'Booking Details',
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
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(
                        title: 'User Details',
                      ),
                      buildVSpacer(10),
                      Row(
                        children: [
                          const Image(
                            image: AssetImage('assets/profile_pic.png'),
                            width: 65,
                            height: 65,
                          ),
                          buildHSpacer(10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildText(
                                  title: 'Loren Epsom',
                                  fontWeight: FontWeight.w600,
                                  size: 15),
                              buildVSpacer(3),
                              _buildText(
                                  title: '8956454646',
                                  fontWeight: FontWeight.w600,
                                  size: 14),
                              buildVSpacer(3),
                              _buildText(
                                  title:
                                      'sector 66, lane no 2, mamura, noida\nutter pradesh',
                                  fontWeight: FontWeight.w300,
                                  size: 13),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildText(
                        title: 'Trip Details',
                      ),
                      buildVSpacer(10),
                      Column(
                        children: [
                          Row(
                            children: [
                              const Image(
                                image: AssetImage('assets/blue_location.png'),
                                width: 65,
                                height: 55,
                              ),
                              _buildText(
                                  title: 'Pick up point',
                                  fontWeight: FontWeight.w600,
                                  size: 15),
                              _buildText(
                                  title: '10:30 AM',
                                  fontWeight: FontWeight.w600,
                                  size: 15),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 58.0),
                            child: _buildText(
                                title:
                                    'sector 66, lane no 2, mamura, noida utter pradesh',
                                fontWeight: FontWeight.w300,
                                size: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            _buildText(
                title: 'Pickup Process', size: 17, fontWeight: FontWeight.w500),
            buildVSpacer(10),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NavigateToPickUpScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage('assets/one.png'),
                                  width: 65,
                                  height: 55,
                                ),
                                _buildText(
                                    title: 'Navigate to pickup Site',
                                    fontWeight: FontWeight.w600,
                                    size: 15),
                                const Spacer(),
                                const Image(
                                  image: AssetImage('assets/navigate.png'),
                                  width: 65,
                                  height: 55,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 58.0),
                              child: _buildText(
                                  title:
                                      'Terminal 1, Mamura, Sec- 66, Lane no 2, Near Noida Multispecialty hospitaol, Noida, Utter-Pradesh',
                                  fontWeight: FontWeight.w300,
                                  size: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const InspectionScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage('assets/two.png'),
                                  width: 65,
                                  height: 55,
                                ),
                                _buildText(
                                    title: 'Inspect and Go',
                                    fontWeight: FontWeight.w600,
                                    size: 15),
                                const Spacer(),
                                const Image(
                                  image: AssetImage('assets/inspect.png'),
                                  width: 65,
                                  height: 55,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 58.0),
                              child: _buildText(
                                  title:
                                      'Terminal 1, Mamura, Sec- 66, Lane no 2, Near Noida Multispecialty hospitaol, Noida, Utter-Pradesh',
                                  fontWeight: FontWeight.w300,
                                  size: 13),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            buildVSpacer(30),
          ],
        ),
      ),
    );
  }

  Widget _buildTextHeader({
    required String title,
    double? size,
    FontWeight? fontWeight,
    Color? color,
  }) {
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

  Widget _buildText({
    required String title,
    double? size,
    FontWeight? fontWeight,
    Color? color,
  }) {
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
        ),
      ),
    );
  }
}
