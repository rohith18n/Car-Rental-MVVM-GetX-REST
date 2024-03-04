import 'package:car_rental/view/wallet/payment_screen.dart';
import 'package:car_rental/view/wallet/transfer.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class TopUpScreen extends StatefulWidget {
  @override
  _TopUpScreenState createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70, bottom: 10),
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
                              'Wallet',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    color: Color(0xff245196),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 140,
              left: 20,
              right: 20,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                    color: Colors.white,
                    height: 150,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildText(title: 'Total Balance', size: 16),
                            buildVSpacer(15),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '₹5,000',
                                  style: GoogleFonts.roboto(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FontStyle
                                          .italic, // Add this line for italic text
                                      color: Color(0xffED4132)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Image.asset('assets/colorwallet.png'),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 320,
                left: 20,
                right: 20,
              ),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          15.0), // Adjust the radius as needed
                      border: Border.all(
                        color: Color(
                            0xff3CB449), // Choose your desired border color
                        width: 2.0, // Adjust the border width as needed
                      ),
                    ),
                    height: 290,
                    child: Column(
                      children: [
                        buildVSpacer(10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Add money to your',
                                style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                            Text(
                              ' Wallet',
                              style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffED4132)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: buildCustomTextField1(hintText: '₹ 1000'),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          15.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: Colors
                                            .grey, // Choose your desired border color
                                        width:
                                            2.0, // Adjust the border width as needed
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: _buildText(title: '+100'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          15.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: Colors
                                            .grey, // Choose your desired border color
                                        width:
                                            2.0, // Adjust the border width as needed
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: _buildText(title: '+200'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          15.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: Colors
                                            .grey, // Choose your desired border color
                                        width:
                                            2.0, // Adjust the border width as needed
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: _buildText(title: '+500'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          15.0), // Adjust the radius as needed
                                      border: Border.all(
                                        color: Colors
                                            .grey, // Choose your desired border color
                                        width:
                                            2.0, // Adjust the border width as needed
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: _buildText(title: '+1000'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(20),
                        _buildText(
                            title: '100% Safe and Secure Transaction',
                            color: Color(0xffED4132),
                            size: 12),
                        buildVSpacer(10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PaymentScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF245196),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Proceed to add ₹1000',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.only(
                top: 650,
                left: 30,
                right: 20,
              ),
              child: Image.asset('assets/cardbanner.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 800, left: 20, right: 20, bottom: 20),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          15.0), // Adjust the radius as needed
                      border: Border.all(
                        color: Color(
                            0xff3CB449), // Choose your desired border color
                        width: 2.0, // Adjust the border width as needed
                      ),
                    ),
                    height: 320,
                    child: Column(
                      children: [
                        buildVSpacer(10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Transaction History',
                              style: GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffED4132)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 15),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildTextHeader(
                                      title: 'Added From Bank Account'),
                                  _buildTextHeader(
                                      title: '6 Days Ago',
                                      fontWeight: FontWeight.w400),
                                ],
                              ),
                              Spacer(),
                              _buildTextHeader(
                                  title: '+₹500.00', color: Colors.blueGrey),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 15),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildTextHeader(
                                      title: 'Transfer to Michael'),
                                  _buildTextHeader(
                                      title: '6 Days Ago',
                                      fontWeight: FontWeight.w400),
                                ],
                              ),
                              Spacer(),
                              _buildTextHeader(
                                  title: '-₹150.00', color: Colors.redAccent),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 15),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildTextHeader(
                                      title: 'Transfer to Michael'),
                                  _buildTextHeader(
                                      title: '6 Days Ago',
                                      fontWeight: FontWeight.w400),
                                ],
                              ),
                              Spacer(),
                              _buildTextHeader(
                                  title: '-₹150.00', color: Colors.redAccent),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF245196),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            buildVSpacer(20),
          ],
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
        alignment: Alignment.center,
        child: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: size ?? 14,
              fontWeight: fontWeight ?? FontWeight.w500,
              color: color ?? Colors.black),
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
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: size ?? 14,
              fontWeight: fontWeight ?? FontWeight.w500,
              color: color ?? Colors.black),
        ),
      ),
    );
  }
}
