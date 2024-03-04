
import 'package:car_rental/view/share_car_rental/scrollable_clean_calendar.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class ModifyListing extends StatefulWidget {
  final int initialTabIndex;

  const ModifyListing({super.key, required this.initialTabIndex});

  @override
  _ModifyListingState createState() => _ModifyListingState();
}

class _ModifyListingState extends State<ModifyListing> {
  CleanCalendarController calendarController = CleanCalendarController(
    minDate: DateTime(2023, 1, 1),
    maxDate: DateTime(2023, 12, 31),
  );

  bool isFirstButtonSelected = false;
  bool isSecondButtonSelected = true;
  String content = '';

  @override
  void initState() {
    super.initState();

    // Set the default values here
    isFirstButtonSelected = widget.initialTabIndex == 0;
    isSecondButtonSelected = widget.initialTabIndex == 1;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color(0xff245196),
              child: Padding(
                padding: const EdgeInsets.only(top: 70, bottom: 20, right: 10),
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
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Ecosport RJ45CG5758',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton(
                  title: 'Listing',
                  isSelected: isFirstButtonSelected,
                  onTap: () {
                    setState(() {
                      isFirstButtonSelected = true;
                      isSecondButtonSelected = false;
                      // content = 'Listing';
                    });
                  },
                ),
                _buildButton(
                  title: 'Calendar',
                  isSelected: isSecondButtonSelected,
                  onTap: () {
                    setState(() {
                      isFirstButtonSelected = false;
                      isSecondButtonSelected = true;
                      // content = 'Calendar';
                    });
                  },
                ),
              ],
            ),
            isFirstButtonSelected
                ? SizedBox(
                    width: 358,
                    height: 200,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 358,
                            height: 200,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 0),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 171,
                          top: 64,
                          child: Text(
                            'Tue, 9th Aug',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 171,
                          top: 86,
                          child: Opacity(
                            opacity: 0.50,
                            child: Text(
                              '5:00 AM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   left: 23,
                        //   top: 161,
                        //   child: Opacity(
                        //     opacity: 0.50,
                        //     child: Text(
                        //       'Total Listing Days : 04 Days',
                        //       style: TextStyle(
                        //         color: Colors.black,
                        //         fontSize: 12,
                        //         fontFamily: 'Be Vietnam Pro',
                        //         fontWeight: FontWeight.w400,
                        //         height: 0,
                        //         letterSpacing: -0.24,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        const Positioned(
                          left: 292,
                          top: 86,
                          child: Opacity(
                            opacity: 0.50,
                            child: Text(
                              '11:00 PM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 266,
                          top: 64,
                          child: Text(
                            'Thu, 10th Aug',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.24,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 23,
                          top: 53,
                          child: Container(
                            width: 81,
                            height: 65.21,
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image: AssetImage('assets/white_car.png'),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 171,
                          top: 36,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF258E00),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 332,
                          top: 36,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFFE5244),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 249,
                          top: 8,
                          child: Container(
                            width: 93,
                            height: 20,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 4),
                            decoration: const BoxDecoration(color: Color(0xFFF4F4F4)),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'ID: A92TD3',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 161,
                          top: 120,
                          child: Container(
                            // width: 0,
                            // height: 35,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: ShapeDecoration(
                              // color: Color(0xff245196),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ModifyListing(initialTabIndex: 1),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 110,
                                    // height: 35,
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xff245196),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                    ),
                                    child: const Text(
                                      'Modify Listing',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                buildHSpacer(20),
                                GestureDetector(
                                  onTap: () {
                                    // Handle the tap event
                                  },
                                  child: Image.asset(
                                    'assets/blue_arrow_forward.png',
                                    width: 45,
                                    height: 45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Positioned(
                        //   left: 182,
                        //   top: 41,
                        //   child: Opacity(
                        //     opacity: 0.50,
                        //     child: Container(
                        //       width: 149,
                        //       decoration: ShapeDecoration(
                        //         shape: RoundedRectangleBorder(
                        //           side: BorderSide(
                        //             width: 0.50,
                        //             strokeAlign: BorderSide.strokeAlignCenter,
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  )
                : _buildText(title: content),
            // Display the selected content
            isSecondButtonSelected
                ? SizedBox(
                    height: 500,
                    child: ScrollableCleanCalendar(
                      calendarController: calendarController,
                      layout: Layout.BEAUTY,
                      calendarCrossAxisSpacing: 0,
                      daySelectedBackgroundColor: const Color(0XFF258E00),
                    ),
                  )
                : _buildText(title: content),
          ],
        ),
      ),
    );
  }

  Widget _buildText({
    required String title,
    double? size,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.beVietnamPro(
              fontSize: size ?? 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton({
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 160,
          height: 35, // Set the height as needed
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xff245196) : Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.blue),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
