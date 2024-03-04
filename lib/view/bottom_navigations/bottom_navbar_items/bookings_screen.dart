import 'package:car_rental/view/booking_details/booking_details_screen.dart';
import 'package:car_rental/view/car_location/car_location_screen.dart';
import 'package:car_rental/view/car_location/start_trip_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(230),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            color: Colors.white,
            child: Column(
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
                              'My Bookings',
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: 500,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                              _buildText(title: 'Booking Status', size: 13),
                              buildVSpacer(5),
                              Container(
                                width: 110,
                                height: 40,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFD9D9D9)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: PopupMenuButton<String>(
                                  onSelected: (value) {
                                    // Handle the selected value here
                                  },
                                  itemBuilder: (BuildContext context) {
                                    return <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: 'All',
                                        child: Text('All'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Upcoming',
                                        child: Text('Upcoming'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Ongoing',
                                        child: Text('Ongoing'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Completed',
                                        child: Text('Completed'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Cancelled',
                                        child: Text('Cancelled'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Not Serve',
                                        child: Text('Not Serve'),
                                      ),
                                    ];
                                  },
                                  child: Row(
                                    children: [
                                      _buildTextHeader(title: 'All'),
                                      const Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        buildHSpacer(10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildText(title: 'Time Duration', size: 13),
                              buildVSpacer(5),
                              Container(
                                width: 125,
                                height: 40,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFD9D9D9)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: PopupMenuButton<String>(
                                  onSelected: (value) {
                                    // Handle the selected value here
                                  },
                                  itemBuilder: (BuildContext context) {
                                    return <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: 'Last Week',
                                        child: Text('Last Week'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Last Month',
                                        child: Text('Last Month'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Till Date',
                                        child: Text('Till Date'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Custom',
                                        child: Text('Custom'),
                                      ),
                                    ];
                                  },
                                  child: Row(
                                    children: [
                                      _buildTextHeader(title: 'Till Date'),
                                      buildHSpacer(5),
                                      const Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        buildHSpacer(10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildText(title: 'Select Car', size: 13),
                              buildVSpacer(5),
                              Container(
                                width: 125,
                                height: 40,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFD9D9D9)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: PopupMenuButton<String>(
                                  onSelected: (value) {
                                    // Handle the selected value here
                                  },
                                  itemBuilder: (BuildContext context) {
                                    return <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: 'All',
                                        child: Text('All'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Car 1',
                                        child: Text('Car 1'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Car 2',
                                        child: Text('Car 2'),
                                      ),
                                      const PopupMenuItem<String>(
                                        value: 'Car 3',
                                        child: Text('Car 3'),
                                      ),
                                    ];
                                  },
                                  child: Row(
                                    children: [
                                      _buildTextHeader(title: 'All'),
                                      buildHSpacer(5),
                                      const Icon(Icons.arrow_drop_down),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            // Your content goes here
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Card(
                elevation: 5,
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        _buildText(
                            title: 'Rental Booking',
                            size: 14,
                            fontWeight: FontWeight.bold),
                        buildVSpacer(20),
                        Container(
                          width: 362,
                          height: 382,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEEEEEE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 14,
                                offset: Offset(0, 6),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/cb1.png'),
                              Row(
                                children: [
                                  _buildText(
                                      title: 'Ford EcoSport 2023',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                  const Spacer(),
                                  _buildText(
                                      title: 'Sedan',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      _buildText(
                                          title: '₹1400',
                                          size: 40,
                                          fontWeight: FontWeight.bold),
                                      Text(
                                        '/Hrs',
                                        style: GoogleFonts.beVietnamPro(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[500]),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  _buildText(
                                      title: 'ID: 78990AB',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Container(
                                    width: double.infinity,
                                    height: 34,
                                    padding: const EdgeInsets.all(8.5),
                                    decoration: ShapeDecoration(
                                      color: Colors.grey[350],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(26),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/star.png'),
                                        buildHSpacer(20),
                                        const Text(
                                          '4.21 . Good . 21 Trips',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '4 Reviews >',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  _buildText(
                                      title: '•5 Seater •Automatic •Diesel',
                                      size: 14),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CarLocationScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, right: 10),
                                      child:
                                          Image.asset('assets/next_icon.png'),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const StartTripScreen(),
                                            ),
                                          );
                                        },
                                        child:
                                            Image.asset('assets/confirm1.png')),
                                    const Spacer(),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const BookingDetailsScreen(),
                                            ),
                                          );
                                        },
                                        child: Image.asset('assets/end1.png')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        buildVSpacer(30),
                        _buildText(
                            title: 'Subscription  Booking',
                            size: 14,
                            fontWeight: FontWeight.bold),
                        buildVSpacer(20),
                        Container(
                          width: 362,
                          height: 520,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEEEEEE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 14,
                                offset: Offset(0, 6),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/cb1.png'),
                              Row(
                                children: [
                                  _buildText(
                                      title: 'Ford EcoSport 2023',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                  const Spacer(),
                                  _buildText(
                                      title: 'Sedan',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      _buildText(
                                          title: '₹14000',
                                          size: 40,
                                          fontWeight: FontWeight.bold),
                                      Text(
                                        '/Hrs',
                                        style: GoogleFonts.beVietnamPro(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[500]),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  _buildText(
                                      title: 'ID: 78990AB',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Container(
                                    width: double.infinity,
                                    height: 34,
                                    padding: const EdgeInsets.all(8.5),
                                    decoration: ShapeDecoration(
                                      color: Colors.grey[350],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(26),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/star.png'),
                                        buildHSpacer(20),
                                        const Text(
                                          '4.21 . Good . 21 Trips',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const Spacer(),
                                        const Text(
                                          '4 Reviews >',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w300,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              buildVSpacer(10),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      _buildText(
                                          title: '•5 Seater •Automatic •Diesel',
                                          size: 14),
                                      _buildText(
                                          title:
                                              'Trip : 11-Nov-2023 to 11-Feb-2024',
                                          size: 14),
                                    ],
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CarLocationScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.0, right: 10),
                                      child:
                                          Image.asset('assets/next_icon.png'),
                                    ),
                                  )
                                ],
                              ),
                              buildVSpacer(5),
                              _buildText(
                                  title: 'Amount pay :',
                                  size: 14,
                                  fontWeight: FontWeight.bold),
                              buildVSpacer(5),
                              Row(
                                children: [
                                  _buildText(
                                      title: '11-Nov-2023 to 11-Dec-2023',
                                      size: 14),
                                  const Spacer(),
                                  _buildText(
                                      title: 'Cleared',
                                      color: const Color(0xff258E00))
                                ],
                              ),
                              buildVSpacer(5),
                              Row(
                                children: [
                                  _buildText(
                                      title: '11-Nov-2023 to 11-Dec-2023',
                                      size: 14),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Image.asset('assets/pending.png'),
                                  )
                                ],
                              ),
                              buildVSpacer(5),
                              Row(
                                children: [
                                  _buildText(
                                      title: '11-Nov-2023 to 11-Dec-2023',
                                      size: 14),
                                  const Spacer(),
                                  _buildText(
                                      title: 'Upcoming',
                                      color: const Color(0xffD38200))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const StartTripScreen(),
                                            ),
                                          );
                                        },
                                        child:
                                            Image.asset('assets/confirm2.png')),
                                    buildVSpacer(5),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const BookingDetailsScreen(),
                                            ),
                                          );
                                        },
                                        child: Image.asset('assets/end2.png')),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        buildVSpacer(10),
                        buildVSpacer(30),
                        _buildText(
                            title: 'Sharing  Booking',
                            size: 14,
                            fontWeight: FontWeight.bold),
                        buildVSpacer(20),
                        Container(
                          width: 362,
                          height: 582,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFEEEEEE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 14,
                                offset: Offset(0, 6),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Center(child: Image.asset('assets/cb1.png')),
                              Row(
                                children: [
                                  _buildText(
                                      title: 'Ford EcoSport 2023',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                  const Spacer(),
                                  _buildText(
                                      title: 'Sedan',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      _buildText(
                                          title: '₹350',
                                          size: 40,
                                          fontWeight: FontWeight.bold),
                                      Text(
                                        '/Hrs',
                                        style: GoogleFonts.beVietnamPro(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[500]),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  _buildText(
                                      title: 'ID: 78990AB',
                                      size: 14,
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                              buildVSpacer(10),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      _buildText(
                                          title: '•5 Seater •Automatic •Diesel',
                                          size: 14),
                                      buildVSpacer(10),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 18.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.check,
                                              color: Color(0xff258E00),
                                            ),
                                            _buildText(
                                                title: 'Confirmed',
                                                color: const Color(0xff258E00)),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(top: 0.0, right: 10),
                                  //   child: Image.asset('assets/next_icon.png'),
                                  // )
                                ],
                              ),
                              buildVSpacer(20),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      _buildText(
                                          title: 'Monday, 30 July',
                                          size: 25,
                                          fontWeight: FontWeight.bold),
                                      buildVSpacer(10),
                                    ],
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CarLocationScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.0, right: 10),
                                      child:
                                          Image.asset('assets/next_icon.png'),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Image.asset('assets/distance.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/dark_profile.png',
                                    ),
                                    _buildText(
                                        title: 'Sanjay',
                                        size: 14,
                                        fontWeight: FontWeight.bold),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Center(
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const StartTripScreen(),
                                            ),
                                          );
                                        },
                                        child: Image.asset(
                                            'assets/confirm1.png'))),
                              )
                            ],
                          ),
                        ),
                        buildVSpacer(10),
                        buildVSpacer(30),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            buildVSpacer(20),
          ],
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
          textAlign: TextAlign.center,
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
}
