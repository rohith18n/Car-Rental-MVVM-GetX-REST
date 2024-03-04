import 'package:car_rental/view/share_car_sharing/when_going_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:timeline_tile/timeline_tile.dart';

// Import statements remain unchanged

class StopOverScreen2 extends StatefulWidget {
  const StopOverScreen2({super.key});

  @override
  _StopOverScreen2State createState() => _StopOverScreen2State();
}

class _StopOverScreen2State extends State<StopOverScreen2> {
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
                      builder: (context) => const WhenGoingScreen(),
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
                title: 'Add Stopover to get\nmore Passengers',
                size: 18,
                fontWeight: FontWeight.w600),
            buildVSpacer(15),
            Row(
              children: [
                Column(
                  children: [
                    _buildTimelineTile(
                      title: 'Tinfactory ,Bus Stop ,Bengaluru',
                      fontWeight: FontWeight.w300,
                      isFirst: true,
                      // Set to true for the first timeline tile
                    ),
                    _buildTimelineTile(
                      title: 'Petrol Station\nKolar',
                      fontWeight: FontWeight.w500,
                      isFirst: true, // Set to true for the first timeline tile
                    ),
                    _buildTimelineTile(
                      title: 'Tinfactory ,Bus Stop ,Bengaluru',
                      fontWeight: FontWeight.w300,
                      isFirst:
                          true, // Set to false for subsequent timeline tiles
                      isLast: true, // Set to true for the last timeline tile
                    ),
                  ],
                ),
                const Icon(Icons.arrow_right)
              ],
            ),
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

  Widget _buildTimelineTile({
    required String title,
    double? size,
    FontWeight? fontWeight,
    bool isFirst = false,
    bool isLast =
        false, // Add this parameter to check if it's the last timeline tile
  }) {
    return SizedBox(
      width: 330,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: isFirst ? 0.10 : 0.5,
        indicatorStyle: IndicatorStyle(
          width: 15,
          color: Colors.blue,
          padding: const EdgeInsets.symmetric(
            horizontal: 5.0,
          ),
          indicatorXY: isFirst ? 0.16 : 0.5,
        ),
        endChild: Align(
          alignment: Alignment.topLeft,
          child: ListTile(
            title: Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: fontWeight ?? FontWeight.w500,
                fontSize: size ?? 13,
              ),
            ),
          ),
        ),
        // startChild: Container(
        //   height: double.infinity,
        // ),
        startChild: isFirst
            ? null
            : const SizedBox(
                height: double.infinity,
                width: 12, // Adjust the width to match the circle's width
              ),
        isLast: isLast, // Pass the isLast parameter to the TimelineTile
      ),
    );
  }
}
