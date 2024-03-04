
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetupDoorStepDelivery extends StatefulWidget {
  const SetupDoorStepDelivery({super.key});

  @override
  _SetupDoorStepDeliveryState createState() => _SetupDoorStepDeliveryState();
}

class _SetupDoorStepDeliveryState extends State<SetupDoorStepDelivery> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // color: Color(0xffEDB31B),
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
                          'Delivery Setting',
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
            ),
            buildVSpacer(20),
            _buildTextHeader(
                title: 'Introducing airport &\ndoorstep delivery',
                size: 30,
                fontWeight: FontWeight.bold),
            buildVSpacer(25),
            _buildTextHeader(
                title:
                    'Torem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                fontWeight: FontWeight.w400),
            buildVSpacer(76),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/eye.png',
                          width: 35,
                          height: 35,
                        ),
                        _buildTextHeader(
                            title: 'More Views from\nguest', size: 13)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/coin.png',
                          width: 35,
                          height: 35,
                        ),
                        _buildTextHeader(
                            title: 'More bookings &\nearnings', size: 13)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/search.png',
                          width: 35,
                          height: 35,
                        ),
                        _buildTextHeader(
                            title: 'Higher search\nranking', size: 13)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(45),
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
