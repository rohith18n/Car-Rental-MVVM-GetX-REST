import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferAndEarnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: double.infinity,
              color: Color(0xff245196),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 70,
                    ),
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
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/referandearn.png', // Replace with the URL of your image
                  ),
                  buildVSpacer(10),
                  _buildText(
                      title: 'Earn Money\nBy Refer',
                      size: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                  buildVSpacer(10),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Container(
                              decoration: ShapeDecoration(
                                color: Colors.white
                                    .withOpacity(0.4000000059604645),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    _buildText(
                                        title: 'mir20220320',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800),
                                    buildHSpacer(30),
                                    _buildText(
                                        title: 'Copy',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: ShapeDecoration(
                              color: Color(0xFFE1AD00),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: _buildText(
                                  title: 'SHARE', fontWeight: FontWeight.w800),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 130.0, right: 130, top: 20, bottom: 20),
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Color(0xFFE1AD00),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: _buildText(
                            title: 'Refer Via',
                            fontWeight: FontWeight.w400,
                            size: 12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Row(
                      children: [
                        Image.asset('assets/whatsapp.png'),
                        Spacer(),
                        Image.asset('assets/facebook.png'),
                        Spacer(),
                        Image.asset('assets/link.png')
                      ],
                    ),
                  ),
                  buildVSpacer(20),
                  Container(
                    height: 330,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            buildVSpacer(20),
                            Row(
                              children: [
                                _buildText(
                                    title: 'Invite a friend',
                                    size: 22,
                                    fontWeight: FontWeight.w600),
                                Spacer(),
                                Icon(
                                  Icons.search,
                                  size: 28,
                                )
                              ],
                            ),
                            buildVSpacer(20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile_pic.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Tongkun Lee',
                                        size: 16,
                                        fontWeight: FontWeight.w600),
                                    buildVSpacer(3),
                                    _buildText(
                                        title: 'Facebook',
                                        size: 16,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  // padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 23),
                                  decoration: ShapeDecoration(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: _buildText(
                                        title: 'Invite',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            buildVSpacer(20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile_pic.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Tongkun Lee',
                                        size: 16,
                                        fontWeight: FontWeight.w600),
                                    buildVSpacer(3),
                                    _buildText(
                                        title: 'Facebook',
                                        size: 16,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  // padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 23),
                                  decoration: ShapeDecoration(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: _buildText(
                                        title: 'Invite',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            buildVSpacer(20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile_pic.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Tongkun Lee',
                                        size: 16,
                                        fontWeight: FontWeight.w600),
                                    buildVSpacer(3),
                                    _buildText(
                                        title: 'Facebook',
                                        size: 16,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  // padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 23),
                                  decoration: ShapeDecoration(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: _buildText(
                                        title: 'Invite',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            buildVSpacer(20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile_pic.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Tongkun Lee',
                                        size: 16,
                                        fontWeight: FontWeight.w600),
                                    buildVSpacer(3),
                                    _buildText(
                                        title: 'Facebook',
                                        size: 16,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  // padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 23),
                                  decoration: ShapeDecoration(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: _buildText(
                                        title: 'Invite',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            buildVSpacer(20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile_pic.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Tongkun Lee',
                                        size: 16,
                                        fontWeight: FontWeight.w600),
                                    buildVSpacer(3),
                                    _buildText(
                                        title: 'Facebook',
                                        size: 16,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  // padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 23),
                                  decoration: ShapeDecoration(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: _buildText(
                                        title: 'Invite',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            buildVSpacer(20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile_pic.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Tongkun Lee',
                                        size: 16,
                                        fontWeight: FontWeight.w600),
                                    buildVSpacer(3),
                                    _buildText(
                                        title: 'Facebook',
                                        size: 16,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  // padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 23),
                                  decoration: ShapeDecoration(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: _buildText(
                                        title: 'Invite',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            buildVSpacer(20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile_pic.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Tongkun Lee',
                                        size: 16,
                                        fontWeight: FontWeight.w600),
                                    buildVSpacer(3),
                                    _buildText(
                                        title: 'Facebook',
                                        size: 16,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  // padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 23),
                                  decoration: ShapeDecoration(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: _buildText(
                                        title: 'Invite',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            buildVSpacer(20),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/profile_pic.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    _buildText(
                                        title: 'Tongkun Lee',
                                        size: 16,
                                        fontWeight: FontWeight.w600),
                                    buildVSpacer(3),
                                    _buildText(
                                        title: 'Facebook',
                                        size: 16,
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  // padding: const EdgeInsets.symmetric(horizontal: 159, vertical: 23),
                                  decoration: ShapeDecoration(
                                    color: Colors.grey[300],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: _buildText(
                                        title: 'Invite',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            buildVSpacer(20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
          style: TextStyle(
              fontSize: size ?? 15,
              fontWeight: fontWeight ??
                  FontWeight
                      .w500, // Use the provided fontWeight or default to FontWeight.w500
              fontFamily: 'Poppins',
              color: color ?? Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
