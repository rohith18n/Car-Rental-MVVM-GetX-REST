import 'package:car_rental/view/share_car_sharing/stop_over_screen2.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// Import statements remain unchanged

class StopOverScreen extends StatefulWidget {
  const StopOverScreen({super.key});

  @override
  _StopOverScreenState createState() => _StopOverScreenState();
}

class _StopOverScreenState extends State<StopOverScreen> {
  final bool _switchValue = false;
  final int _selectedRoute = 0; // Track the selected route
  bool _isChecked = false; // Track the state of the checkbox

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
                      builder: (context) => const StopOverScreen2(),
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
                _buildTextHeader(title: 'Kolar district'),
                const Spacer(),
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                width: 396,
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
            ),
            buildVSpacer(20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Add City',
                style: TextStyle(
                  color: Color(0xFF245196),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 0.32,
                ),
              ),
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
}
