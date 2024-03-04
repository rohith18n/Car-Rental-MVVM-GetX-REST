import 'package:car_rental/view/share_car_sharing/passengers_screen5.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PassengerScreen4 extends StatefulWidget {
  const PassengerScreen4({super.key});

  @override
  _PassengerScreen4State createState() => _PassengerScreen4State();
}

class _PassengerScreen4State extends State<PassengerScreen4> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20, left: 10),
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
                  const SizedBox(width: 24),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/red_car.png'),
                buildVSpacer(20),
                _buildTextHeader(
                    title:
                        'Coming back as well ?\nPublish your return ride\nnow!',
                    size: 16,
                    fontWeight: FontWeight.w600),
                buildVSpacer(50),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PassengerScreen5(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        _buildTextHeader(
                          title: 'Yes , Sure !',
                          color: const Color(0xff245196),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_right)
                      ],
                    ),
                  ),
                ),
                buildVSpacer(5),
                Container(
                  width: 358,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFDFDFDF),
                      ),
                    ),
                  ),
                ),
                buildVSpacer(15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    children: [
                      _buildTextHeader(
                        title: 'No, I’ll squeeze in 3',
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_right)
                    ],
                  ),
                ),
                buildVSpacer(20),
              ],
            )
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
