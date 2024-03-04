import 'package:car_rental/view/wallet/topup.dart';
import 'package:car_rental/view/wallet/transfer1.dart';
import 'package:car_rental/view/wallet/wallet1.dart';
import 'package:car_rental/view/wallet/withdrawal.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletScreen1 extends StatefulWidget {
  const WalletScreen1({super.key});

  @override
  _WalletScreen1State createState() => _WalletScreen1State();
}

class _WalletScreen1State extends State<WalletScreen1> {
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
                        'Wallet',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const WalletScreen1(),
                      ),
                    );
                  },
                  child: Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 46, vertical: 10),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF245196),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: const Text(
                      'Main Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                buildHSpacer(40),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const WalletScreen2(),
                      ),
                    );
                  },
                  child: Container(
                    height: 32,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 46, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: const BorderSide(color: Color(0xFF245196), width: 1.0),
                      ),
                    ),
                    child: const Text(
                      'Refer Wallet',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                decoration: ShapeDecoration(
                  color: const Color(0xFF245196),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Main balance',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                    buildVSpacer(30),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '₹14,235',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600,
                              height: 0.04,
                            ),
                          ),
                          TextSpan(
                            text: '.34',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    buildVSpacer(40),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const TopUpScreen(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/topup.png',
                                ),
                                buildVSpacer(10),
                                const Text(
                                  'Top up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Sora',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 24),
                          Image.asset(
                            'assets/Vector 1.png',
                          ),
                          const SizedBox(width: 24),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const WithdrawalScreen(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/withdraw.png',
                                ),
                                buildVSpacer(10),
                                const Text(
                                  'Withdraw',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Sora',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 24),
                          Image.asset(
                            'assets/Vector 1.png',
                          ),
                          const SizedBox(width: 24),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const TransferScreen1(),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/transfer.png',
                                ),
                                buildVSpacer(10),
                                const Text(
                                  'Transfer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Sora',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: _buildTextHeader(title: 'Recent Transfers'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: SizedBox(
                height: 120, // Adjust the height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/hat_pic.png',
                            height: 70, // Adjust the height as needed
                            width: 70, // Adjust the width as needed
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Ali',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  _buildTextHeader(title: 'Latest Transactions'),
                  const Spacer(),
                  _buildTextHeader(
                      title: 'View All', fontWeight: FontWeight.w400, size: 13),
                ],
              ),
            ),
            buildVSpacer(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Wallmart.png',
                    scale: 0.8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(title: 'Wallmart'),
                      _buildTextHeader(
                          title: 'Today 12:32', fontWeight: FontWeight.w400),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      _buildTextHeader(title: '-₹35.23', color: Colors.red),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300], // Divider color
              thickness: 1.0,
              endIndent: 20,
              indent: 20,
              // Divider thickness
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Topup1.png',
                    scale: 0.8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(title: 'Top up'),
                      _buildTextHeader(
                          title: 'Yesterday 12:32',
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      _buildTextHeader(title: '+₹430.00', color: Colors.green),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300], // Divider color
              thickness: 1.0,
              endIndent: 20,
              indent: 20,
              // Divider thickness
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/Netflix.png',
                    scale: 0.8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildTextHeader(title: 'Netflix'),
                      _buildTextHeader(
                          title: 'Dec 24 12:32', fontWeight: FontWeight.w400),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      _buildTextHeader(title: '-₹13.00', color: Colors.red),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300], // Divider color
              thickness: 1.0,
              endIndent: 20,
              indent: 20,
              // Divider thickness
            ),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF245196),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Back',
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
