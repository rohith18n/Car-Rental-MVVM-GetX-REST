import 'package:car_rental/view/share_car_sharing/comfort_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimingScreen extends StatefulWidget {
  const TimingScreen({super.key});

  @override
  _TimingScreenState createState() => _TimingScreenState();
}

class _TimingScreenState extends State<TimingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, right: 10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 120,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ComfortScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff245196), // Background color
                ),
                child: Text(
                  'Go',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
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
            _buildTextHeader(
                title: 'At what time will you\npick passengers up?',
                size: 18,
                fontWeight: FontWeight.w600),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                width: 358,
                height: 74,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '17:00 ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    buildHSpacer(20),
                    const Icon(Icons.arrow_drop_down_sharp)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextHeader({
    required String title,
    double? size,
    FontWeight? fontWeight,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: size ?? 14,
            fontWeight: fontWeight ?? FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
