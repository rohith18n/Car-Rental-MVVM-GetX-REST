import 'package:car_rental/view/add_new_car/address_proof.dart';
import 'package:car_rental/view/add_new_car/car_document_details.dart';
import 'package:car_rental/view/add_new_car/dl_car_details.dart';
import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/bottom_navigations/bottom_navbar_items/home.dart';
import 'package:car_rental/view/wallet/add_bank_details.dart';
import 'package:car_rental/view/wallet/payment_sucessfull_screen.dart';
import 'package:car_rental/view/wallet/transfer.dart';
import 'package:car_rental/view/wallet/wallet.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedRadio = 0;
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
                        'Payment',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      _buildTextHeader(title: 'Amount to be paid', size: 16),
                      Spacer(),
                      _buildTextHeader(
                          title: '₹ 724.00',
                          size: 16,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                  buildVSpacer(10),
                  Divider(
                    color: Colors.grey[300], // Divider color
                    thickness: 1.0,
                    endIndent: 20,
                    indent: 20,
                    // Divider thickness
                  ),
                  buildVSpacer(20),
                  _buildTextHeader(title: 'Suggested for you', size: 18),
                  ListTile(
                    title: Text('Kotak Mahindra Bank UPI'),
                    subtitle: Text('Account No.  xxxx xxxx 6746'),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadio = value!;
                        });
                      },
                    ),
                    trailing: Image.asset('assets/upi.png'),
                  ),
                  ListTile(
                    title: Text('Google Pay UPI'),
                    subtitle: Text('tejasaher67@gmail.com'),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadio = value!;
                        });
                      },
                    ),
                    trailing: Image.asset('assets/google.png'),
                  ),
                  Divider(
                    color: Colors.grey[300], // Divider color
                    thickness: 1.0,
                    endIndent: 20,
                    indent: 20,
                    // Divider thickness
                  ),
                  _buildTextHeader(title: 'All other option'),
                  ListTile(
                    title: Text('UPI'),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadio = value!;
                        });
                      },
                    ),
                    trailing: Image.asset('assets/bhim.png'),
                  ),
                  ListTile(
                    title: Text('Wallets'),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadio = value!;
                        });
                      },
                    ),
                    trailing: Image.asset('assets/wallet1.png'),
                  ),
                  ListTile(
                    title: Text('Credit/ Debit/ ATM Card'),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (int? value) {
                        setState(() {
                          selectedRadio = value!;
                        });
                      },
                    ),
                    trailing: Image.asset('assets/credit.png'),
                  ),
                ],
              ),
            ),
            buildVSpacer(70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    // Navigate to PaymentSucessfullScreen
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentSucessfullScreen(),
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
                      'Payment',
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
