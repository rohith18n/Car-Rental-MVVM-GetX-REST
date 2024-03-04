import 'package:car_rental/view/share_car_sharing/drop_off_screen.dart';
import 'package:car_rental/view/share_car_sharing/timing_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class WhenGoingScreen extends StatefulWidget {
  @override
  _WhenGoingScreenState createState() => _WhenGoingScreenState();
}

class _WhenGoingScreenState extends State<WhenGoingScreen> {
  late CleanCalendarController calendarController;

// Inside _WhenGoingScreenState class
  @override
  void initState() {
    super.initState();
    // Initialize the CleanCalendarController with minDate set to the current date
    calendarController = CleanCalendarController(
      minDate: DateTime.now(),
      maxDate: DateTime(2023, 12, 31),
      rangeMode: false,
      onDayTapped: (selectedDate) {
        // Add a delay before navigating to the home screen
        Future.delayed(Duration(milliseconds: 500), () {
          // Navigate to the home screen
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TimingScreen(),
            ),
          );
        });
      },
    );
  }

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
                title: 'When are you going',
                size: 18,
                fontWeight: FontWeight.w600),
            buildVSpacer(15),
            Container(
              width: double.infinity,
              height: 600,
              child: ScrollableCleanCalendar(
                calendarController: calendarController,
                layout: Layout.BEAUTY,
                calendarCrossAxisSpacing: 0,
                daySelectedBackgroundColor: Color(0XFF245196),
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
