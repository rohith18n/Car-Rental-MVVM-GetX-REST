import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


class PricingControlScreen extends StatefulWidget {
  const PricingControlScreen({super.key});

  @override
  _PricingControlScreenState createState() => _PricingControlScreenState();
}

class _PricingControlScreenState extends State<PricingControlScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    void showUploadBottomSheet() {
      bool? isSelected = false; // Track the radio button state

      showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(0.0)),
        ),
        backgroundColor: Colors.white,
        builder: (context) {
          return Container(
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/white_car.png'),
                      // Set your desired height
                    ),
                    _buildText(title: 'Nexon MT DL05PQ1234'),
                    Radio(
                      value: true,
                      groupValue: isSelected,
                      onChanged: (value) {
                        setState(() {
                          isSelected = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEDB31B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'CHANGE PRICE RANGE',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
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
                          'Pricing Details',
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
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () {
                        showUploadBottomSheet();
                      },
                      child: const Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 30,
                      ))
                ],
              ),
            ),
            Image.asset('assets/graph.png'),
            buildVSpacer(10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(
                          title: 'Min price/hr.', fontWeight: FontWeight.w600),
                      buildVSpacer(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 18),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            // color: Color(0xff245196),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextField(
                              maxLines: null,
                              minLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: '₹79',
                                hintStyle: GoogleFonts.beVietnamPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          // buildCustomTextField1(hintText: '₹ 2000'),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(
                          title: 'Max price/hr.', fontWeight: FontWeight.w600),
                      buildVSpacer(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 18),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            // color: Color(0xff245196),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextField(
                              maxLines: null,
                              minLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: '₹180',
                                hintStyle: GoogleFonts.beVietnamPro(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          // buildCustomTextField1(hintText: '₹ 2000'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                width: double.infinity,
                height: 222,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD6FFEB),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        buildVSpacer(10),
                        _buildTextHeader(
                          title: 'Your price will vary as below, and you will'
                              '\nearn 62% share of the price decided',
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff2A5DEC),
                        ),
                        buildVSpacer(15),
                        Image.asset('assets/yellowline.png'),
                      ],
                    ),
                    Positioned(
                      left: 45,
                      top: 58,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Stack(
                          children: [
                            Image.asset('assets/blueuparrow.png'),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 88,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildTextHeader(
                                      title: '₹185/hr',
                                      color: const Color(0xff2A5DEC),
                                      fontWeight: FontWeight.bold,
                                      size: 17),
                                  _buildTextHeader(
                                      title: 'High demand \n& short\nBookings',
                                      color: const Color(0xff2A5DEC),
                                      fontWeight: FontWeight.w600,
                                      size: 14),
                                ],
                              ),
                              buildHSpacer(95),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildTextHeader(
                                      title: '₹79/hr',
                                      color: const Color(0xff2A5DEC),
                                      fontWeight: FontWeight.bold,
                                      size: 17),
                                  _buildTextHeader(
                                      title: 'Low demand \n& short\nBookings',
                                      color: const Color(0xff2A5DEC),
                                      fontWeight: FontWeight.w600,
                                      size: 14),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 85,
                      bottom: 12,
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Stack(
                          children: [
                            Image.asset('assets/bluedownarrow.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                color: Colors.white,
                margin: const EdgeInsets.all(10.0),
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
                    child: Row(
                      children: [
                        Image.asset('assets/coins.png'),
                        buildHSpacer(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Auto Pricing',
                              style: TextStyle(
                                fontSize: screenWidth * 0.038,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'We will set the price',
                              style: TextStyle(
                                fontSize: screenWidth * 0.038,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Transform.scale(
                          scale: 0.6, // Adjust the scale to modify the height
                          child: LiteRollingSwitch(
                            value: _switchValue,
                            textOn: '',
                            textOff: '',
                            colorOn: const Color(0XFF6750A4),
                            colorOff: const Color(0XFF6750A4),
                            iconOn: Icons.check,
                            iconOff: Icons.close,
                            textSize: 1.0,
                            width: 90, // Set the desired width
                            onChanged: (bool state) {
                              setState(() {
                                _switchValue = state;
                              });
                            },
                            onTap: () {},
                            onDoubleTap: () {},
                            onSwipe: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            _buildTextHeader(title: 'Factors impacting your price'),
            buildVSpacer(10),
            DefaultTabController(
              length: 3, // Specify the number of tabs
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey, // Set the border color here
                      width: 1.0, // Set the border thickness here
                    ),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const TabBar(
                        indicatorColor: Color(0xFF000AFF),
                        labelColor: Color(
                            0xFF000AFF), // Set the text color of the selected tab
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Rating'),
                          Tab(text: 'Supply'),
                          Tab(text: 'Demand'),
                        ],
                      ),
                      buildVSpacer(15),
                      SizedBox(
                        height: 200, // Adjust the height as needed
                        child: TabBarView(
                          children: [
                            // Content for Rating tab
                            _buildTabContent(
                                title: 'Rating', imagePath: 'assets/star.png'),
                            // Content for Supply tab
                            _buildTabContent(
                                title: 'Supply',
                                imagePath: 'assets/car_unselected.png'),
                            // Content for Demand tab
                            _buildTabContent(
                                title: 'Demand',
                                imagePath: 'assets/demand.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent({required String title, required String imagePath}) {
    String content = '';

    switch (title) {
      case 'Rating':
        content = 'Rating';
        break;
      case 'Supply':
        content = 'Low in Supply';
        break;
      case 'Demand':
        content = 'High Demand';
        break;
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                width: 30.0, // Adjust the width of the image as needed
                height: 30.0, // Adjust the height of the image as needed
              ),
              const SizedBox(width: 8.0), // Add spacing between image and text
              Text(
                content,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          buildVSpacer(20),
          const Text(
            'We also consider your car image to generate\nyour price.',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff2D79BF),
            ),
          ),
          buildVSpacer(5),
          const Text(
            'Maintain rating above 4.8 and get better pricing\nrange.',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              color: Color(0xff2D79BF),
            ),
          ),
        ],
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
