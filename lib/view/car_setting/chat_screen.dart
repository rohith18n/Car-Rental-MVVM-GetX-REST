import 'dart:ui';

import 'package:car_rental/view/car_setting/calling_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../widgets/app_widgets.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xffEDB31B),
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
                        child: Icon(
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
                          'Chats',
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
            Row(
              children: [
                _buildText(
                    title: 'Connect with user',
                    size: 25,
                    fontWeight: FontWeight.w400),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CallingScreen(),
                        ),
                      );
                    },
                    child: Image.asset('assets/callyellow.png')),
                buildHSpacer(15),
                Image.asset('assets/chatyellow.png'),
                buildHSpacer(15),
              ],
            ),
            buildVSpacer(30),
            Container(
              width: double.infinity,
              child: Image.asset('assets/chat_message.png'),
            ),
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
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
        ),
      ),
    );
  }
}
