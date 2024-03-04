
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_widgets.dart';

class MyEarningsScreen2 extends StatefulWidget {
  const MyEarningsScreen2({super.key});

  @override
  _MyEarningsScreen2State createState() => _MyEarningsScreen2State();
}

class _MyEarningsScreen2State extends State<MyEarningsScreen2> {
  bool _isChecked = false; // Track the state of the checkbox

  void _showUploadBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
      ),
      builder: (context) {
        return Container(
          color: Colors.white,
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                      buildHSpacer(10),
                      Text('All Ratings',
                          style: GoogleFonts.poppins(color: Colors.black)),
                    ],
                  ),
                  buildVSpacer(2),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                      buildHSpacer(10),
                      Text('4-5 rated',
                          style: GoogleFonts.poppins(color: Colors.black)),
                    ],
                  ),
                  buildVSpacer(2),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                      buildHSpacer(10),
                      Text('3-4 rated',
                          style: GoogleFonts.poppins(color: Colors.black)),
                    ],
                  ),
                  buildVSpacer(2),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                      buildHSpacer(10),
                      Text('Below 3 rated',
                          style: GoogleFonts.poppins(color: Colors.black)),
                    ],
                  ),
                  buildVSpacer(8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          color: const Color(0xffEDB31B),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffEDB31B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: const BorderSide(
                                    color: Color(0xffEDB31B), width: 2.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Clear',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          // width: 100,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF245196),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Apply',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          'My Earnings',
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
                // width: 358,
                height: 69,
                decoration: ShapeDecoration(
                  color: const Color(0xFF245196),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Row(
                  children: [
                    _buildText(
                        title: 'Total Ratings',
                        size: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    const Spacer(),
                    _buildText(
                        title: '3.5',
                        size: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset('assets/star.png'),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEDB31B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Check monthly report',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(15),
            _buildText(title: 'Transaction History/invoice'),
            buildVSpacer(10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/car_listing.png'),
                                buildVSpacer(10),
                                // Padding(
                                //   padding: const EdgeInsets.only(left: 10.0),
                                //   child: Row(
                                //     children: [
                                //       Image.asset('assets/star.png'),
                                //       Image.asset('assets/star.png'),
                                //       Image.asset('assets/star.png'),
                                //       Image.asset('assets/star.png'),
                                //       Image.asset('assets/star.png'),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildText(title: 'Loren Epsom'),
                                buildVSpacer(8),
                                Row(
                                  children: [
                                    _buildText(title: 'DD/MM/YYYY'),
                                    Text(
                                      '10:20 AM',
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                buildVSpacer(8),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/star.png'),
                                      Image.asset('assets/star.png'),
                                      Image.asset('assets/star.png'),
                                      Image.asset('assets/star.png'),
                                      Image.asset('assets/star.png'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Image.asset('assets/download.png')
                          ],
                        ),
                        buildVSpacer(15),
                        _buildText(title: 'Review:'),
                        _buildText(
                            title:
                                'Corem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Expanded(
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/car_listing.png'),
                                buildVSpacer(10),
                                // Padding(
                                //   padding: const EdgeInsets.only(left: 10.0),
                                //   child: Row(
                                //     children: [
                                //       Image.asset('assets/star.png'),
                                //       Image.asset('assets/star.png'),
                                //       Image.asset('assets/star.png'),
                                //       Image.asset('assets/star.png'),
                                //       Image.asset('assets/star.png'),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildText(title: 'Loren Epsom'),
                                buildVSpacer(8),
                                Row(
                                  children: [
                                    _buildText(title: 'DD/MM/YYYY'),
                                    Text(
                                      '10:20 AM',
                                      style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                buildVSpacer(8),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/star.png'),
                                      Image.asset('assets/star.png'),
                                      Image.asset('assets/star.png'),
                                      Image.asset('assets/star.png'),
                                      Image.asset('assets/star.png'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Image.asset('assets/download.png')
                          ],
                        ),
                        buildVSpacer(15),
                        _buildText(title: 'Review:'),
                        _buildText(
                            title:
                                'Corem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
            _buildText(
                title: 'Booking based rating history',
                fontWeight: FontWeight.w500,
                size: 16),
            buildVSpacer(15),
            _buildText(title: 'All Ratings', size: 12),
            buildVSpacer(15),

// Existing code...

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Expanded(
                child: Material(
                  // Wrap with Material widget
                  child: GestureDetector(
                    onTap: () {
                      _showUploadBottomSheet();
                    },
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Row(
                          children: [
                            _buildText(title: 'All Ratings'),
                            const Spacer(),
                            const Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

// Existing code...
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
              fontSize: size ?? 14,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
        ),
      ),
    );
  }
}
