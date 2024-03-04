import 'package:car_rental/view/add_new_car/address_proof.dart';
import 'package:car_rental/view/add_new_car/car_document_details.dart';
import 'package:car_rental/view/add_new_car/dl_car_details.dart';
import 'package:car_rental/view/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:car_rental/view/wallet/add_bank_details.dart';
import 'package:car_rental/view/wallet/transfer.dart';
import 'package:car_rental/view/wallet/wallet.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:lottie/lottie.dart';

class WithdrawalScreen3 extends StatefulWidget {
  @override
  _WithdrawalScreen3State createState() => _WithdrawalScreen3State();
}

class _WithdrawalScreen3State extends State<WithdrawalScreen3> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, bottom: 20, left: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 28,
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Withdrawal',
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
          Lottie.asset(
            'assets/confirmtick.json', // Replace with your actual file path
            width: screenWidth,
            height: 200, // Adjust height as needed
            fit: BoxFit.cover,
          ),
          buildVSpacer(150),
          _buildTextHeader(
              title: '₹ 900/-', size: 30, fontWeight: FontWeight.w600),
          _buildTextHeader(
              title:
                  'Your withdrawal has been\nsuccessfully fetched into your\nAccount '),
          buildVSpacer(120),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WalletScreen1(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF245196),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
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
      )),
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
              fontSize: size ?? 14,
              fontWeight: fontWeight ?? FontWeight.w500,
              color: color ?? Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
