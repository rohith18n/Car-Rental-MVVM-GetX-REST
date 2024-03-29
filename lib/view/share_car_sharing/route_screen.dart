import 'package:car_rental/view/share_car_sharing/stop_over_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  _RouteScreenState createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  final bool _switchValue = false;
  int _selectedRoute = 0; // Track the selected route

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
                      builder: (context) => const StopOverScreen(),
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
                title: 'Route', size: 18, fontWeight: FontWeight.w600),
            const SizedBox(
              width: double.infinity,
              child: Image(image: AssetImage('assets/routeMap.png')),
            ),
            _buildTextHeader(
                title: 'What is your route ?',
                size: 22,
                fontWeight: FontWeight.w600),
            _buildRouteOption('2hr 18 min-Tolls', '129 km -NH75 and NH 69 ', 0),
            _buildRouteOption(
                '2hr 41 min-No Tolls', '135 km -NH75 and NH 69 ', 1),
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

  Widget _buildRouteOption(String title, String subtitle, int value) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        // height: 100, // Set a height for the container
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Radio(
              value: value,
              groupValue: _selectedRoute,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedRoute = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
