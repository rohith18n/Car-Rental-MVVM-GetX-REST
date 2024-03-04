import 'package:car_rental/view/share_car_rental/rental_screen.dart';
import 'package:car_rental/view/share_car_sharing/route_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

// ... (Previous code)

class DropOffScreen extends StatefulWidget {
  @override
  _DropOffScreenState createState() => _DropOffScreenState();
}

class _DropOffScreenState extends State<DropOffScreen> {
  bool _switchValue = false;

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
                      child: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                ],
              ),
            ),
            _buildTextHeader(
                title: 'Drop-Off', size: 18, fontWeight: FontWeight.w600),
            _buildSearchBar(),
            _buildListTile(
                icon: AssetImage('assets/target.png'),
                text: 'Use Current location'),
            _buildListTile(
                icon: AssetImage('assets/timer.png'),
                text: 'Tin Factory,Bustand,Bengaluru'),
            _buildListTile(
                icon: AssetImage('assets/timer.png'),
                text: 'Chittor,Andhrapradesh'),
            _buildListTile(
                icon: AssetImage('assets/timer.png'),
                text: 'Palamaner, Palamaner'),
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

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter the full address',
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({required AssetImage icon, required String text}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RouteScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey, // Underline color
                width: 1.0, // Underline thickness
              ),
            ),
          ),
          child: Row(
            children: [
              Image(
                image: icon,
                color: Colors.black,
              ),
              SizedBox(width: 16),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_right,
                color: Colors.black,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
