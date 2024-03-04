import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({super.key});

  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
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
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'FAQ',
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
              child: Container(
                  width: 388,
                  height: 140,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          _buildTextHeader(
                              title:
                                  'Dorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10.0, right: 10, top: 10),
                            child: Image.asset('assets/redminus.png'),
                          )
                        ],
                      ),
                      buildVSpacer(20),
                      _buildTextHeader(
                          title:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus ')
                    ],
                  )),
            ),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                  width: 388,
                  height: 66,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildTextHeader(
                          title:
                              'Dorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                        child: Image.asset('assets/redplus.png'),
                      )
                    ],
                  )),
            ),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                  width: 388,
                  height: 66,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildTextHeader(
                          title:
                              'Dorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                        child: Image.asset('assets/redplus.png'),
                      )
                    ],
                  )),
            ),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                  width: 388,
                  height: 66,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildTextHeader(
                          title:
                              'Dorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                        child: Image.asset('assets/redplus.png'),
                      )
                    ],
                  )),
            ),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                  width: 388,
                  height: 66,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildTextHeader(
                          title:
                              'Dorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                        child: Image.asset('assets/redplus.png'),
                      )
                    ],
                  )),
            ),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                  width: 388,
                  height: 66,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    children: [
                      _buildTextHeader(
                          title:
                              'Dorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                        child: Image.asset('assets/redplus.png'),
                      )
                    ],
                  )),
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
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
        ),
      ),
    );
  }
}
