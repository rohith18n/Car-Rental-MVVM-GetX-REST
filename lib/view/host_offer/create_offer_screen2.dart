
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../widgets/app_widgets.dart';

class CreateOfferScreen2 extends StatefulWidget {
  const CreateOfferScreen2({super.key});

  @override
  _CreateOfferScreen2State createState() => _CreateOfferScreen2State();
}

class _CreateOfferScreen2State extends State<CreateOfferScreen2> {
  bool _switchValue = false;
  bool _isKnowMoreVisible = true;
  final double _sliderValue = 0.5; // Initial value for the slider

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEDB31B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'SAVE',
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          'Create Offer',
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
                    children: [
                      Row(
                        children: [
                          const Image(
                            image: AssetImage('assets/white_car.png'),
                          ),
                          buildHSpacer(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildTextHeader(
                                  title: 'Nexon MT DL05PQ1234'),
                              _buildTextHeader(
                                  title: 'DL098YU7878',
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/bluetickcar.png'),
                      _buildTextHeader(title: 'Long Duration Offers'),
                      const Spacer(),
                      Transform.scale(
                        scale: 0.6,
                        child: LiteRollingSwitch(
                          value: _switchValue,
                          textOn: '',
                          textOff: '',
                          colorOn: const Color(0XFF6750A4),
                          colorOff: const Color(0XFF6750A4),
                          iconOn: Icons.check,
                          iconOff: Icons.close,
                          textSize: 1.0,
                          width: 90,
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
                  _buildText(
                    title:
                    'Torem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class ',
                  ),
                  buildVSpacer(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: !_isKnowMoreVisible,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Choose minimum duration',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildVSpacer(15),
                              SizedBox(
                                width: 330,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 66,
                                      height: 34,
                                      padding: const EdgeInsets.all(8.5),
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF444444),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(26),
                                        ),
                                      ),
                                      child: const Text(
                                        '2 days',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 20,
                                        height: 3,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFD9D9D9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(26),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              buildVSpacer(20),
                              Text(
                                'Choose Discount percent',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildVSpacer(15),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 17.0),
                                      child: Text(
                                        '5%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '10%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '15%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '20%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isKnowMoreVisible = !_isKnowMoreVisible;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Visibility(
                            visible: _isKnowMoreVisible,
                            child: Text(
                              'Know More',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffEDB31B),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),

            buildVSpacer(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/bluetimer.png'),
                      _buildTextHeader(title: 'Early Bird Offer'),
                      const Spacer(),
                      Transform.scale(
                        scale: 0.6,
                        child: LiteRollingSwitch(
                          value: _switchValue,
                          textOn: '',
                          textOff: '',
                          colorOn: const Color(0XFF6750A4),
                          colorOff: const Color(0XFF6750A4),
                          iconOn: Icons.check,
                          iconOff: Icons.close,
                          textSize: 1.0,
                          width: 90,
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
                  _buildText(
                    title:
                    'Torem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class ',
                  ),
                  buildVSpacer(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: !_isKnowMoreVisible,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Choose minimum duration',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildVSpacer(15),
                              SizedBox(
                                width: 330,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 66,
                                      height: 34,
                                      padding: const EdgeInsets.all(8.5),
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF444444),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(26),
                                        ),
                                      ),
                                      child: const Text(
                                        '2 days',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 20,
                                        height: 3,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFD9D9D9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(26),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              buildVSpacer(20),
                              Text(
                                'Choose Discount percent',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildVSpacer(15),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 17.0),
                                      child: Text(
                                        '5%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '10%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '15%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '20%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isKnowMoreVisible = !_isKnowMoreVisible;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Visibility(
                            visible: _isKnowMoreVisible,
                            child: Text(
                              'Know More',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffEDB31B),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),


            buildVSpacer(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/react.png'),
                      _buildTextHeader(title: 'Raise the cost'),
                      const Spacer(),
                      Transform.scale(
                        scale: 0.6,
                        child: LiteRollingSwitch(
                          value: _switchValue,
                          textOn: '',
                          textOff: '',
                          colorOn: const Color(0XFF6750A4),
                          colorOff: const Color(0XFF6750A4),
                          iconOn: Icons.check,
                          iconOff: Icons.close,
                          textSize: 1.0,
                          width: 90,
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
                  _buildText(
                    title:
                    'Torem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class ',
                  ),
                  buildVSpacer(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: !_isKnowMoreVisible,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Choose minimum duration',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildVSpacer(15),
                              SizedBox(
                                width: 330,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 66,
                                      height: 34,
                                      padding: const EdgeInsets.all(8.5),
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF444444),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(26),
                                        ),
                                      ),
                                      child: const Text(
                                        '2 days',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 20,
                                        height: 3,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFD9D9D9),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(26),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              buildVSpacer(20),
                              Text(
                                'Choose Discount percent',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              buildVSpacer(15),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 17.0),
                                      child: Text(
                                        '5%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '10%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '15%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Colors.white, // Set your desired background color
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(color: Colors.grey, width: 2.0), // Set border color and width
                                      ),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        '20%',
                                        style: GoogleFonts.roboto(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  buildHSpacer(15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isKnowMoreVisible = !_isKnowMoreVisible;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Visibility(
                            visible: _isKnowMoreVisible,
                            child: Text(
                              'Know More',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffEDB31B),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
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
