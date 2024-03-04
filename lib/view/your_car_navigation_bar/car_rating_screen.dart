
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarRatingScreen extends StatefulWidget {
  const CarRatingScreen({super.key});

  @override
  _CarRatingScreenState createState() => _CarRatingScreenState();
}

class _CarRatingScreenState extends State<CarRatingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
                          'Car Rating',
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
            _buildTextHeader(
                title: 'Ecosport GT Diesel\nRJ45CG5758',
                size: 20,
                fontWeight: FontWeight.w500),
            buildVSpacer(25),
            _buildTextHeader(
                title: 'Ratings not generated',
                size: 22,
                fontWeight: FontWeight.w400),
            buildVSpacer(25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTextHeader(
                    title: 'Issued reported by guest',
                    size: 15,
                    fontWeight: FontWeight.w400),
                Image.asset('assets/error.png')
              ],
            ),
            buildVSpacer(25),
            _buildTextHeader(
                title:
                    'Torem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',
                fontWeight: FontWeight.w400),
            buildVSpacer(25),
            _buildTextHeader(
                title:
                    'Your ratings will get impacted if you dont\nfollow these steps while serving a booking',
                size: 17,
                fontWeight: FontWeight.bold),
            buildVSpacer(25),
            _buildText(
                title: 'Things to Keep in mind before sharing !',
                size: 17,
                fontWeight: FontWeight.w400),
            buildVSpacer(34),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildText(
                        title: 'Serve booking assigned',
                        size: 17,
                        fontWeight: FontWeight.w600),
                    buildVSpacer(10),
                    _buildText(
                        title: 'Always serve booking on time',
                        size: 17,
                        fontWeight: FontWeight.w300),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset('assets/image 32.png'),
                )
              ],
            ),
            buildVSpacer(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildText(
                        title: 'Keep car at right Location',
                        size: 17,
                        fontWeight: FontWeight.w600),
                    buildVSpacer(10),
                    _buildText(
                        title: 'Help the guests to find the car',
                        size: 17,
                        fontWeight: FontWeight.w300),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset('assets/image 33.png'),
                )
              ],
            ),
            buildVSpacer(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildText(
                        title: 'Maintain driving conditions',
                        size: 17,
                        fontWeight: FontWeight.w600),
                    buildVSpacer(10),
                    _buildText(
                        title: 'Give guests a great experience',
                        size: 17,
                        fontWeight: FontWeight.w300),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset('assets/image 34.png'),
                )
              ],
            ),
            buildVSpacer(15),
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
