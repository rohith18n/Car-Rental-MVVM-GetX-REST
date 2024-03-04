// choose_sharing_details.dart
import 'package:car_rental/view/share_car/share_car_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';

import 'modify_listing_screen.dart';

class ConfirmYourSharing extends StatefulWidget {
  const ConfirmYourSharing({super.key});

  @override
  _ConfirmYourSharingState createState() => _ConfirmYourSharingState();
}

class _ConfirmYourSharingState extends State<ConfirmYourSharing> {
  CleanCalendarController calendarController = CleanCalendarController(
    minDate: DateTime(2023, 1, 1),
    maxDate: DateTime(2023, 12, 31),
  );

  void _showCongratulationsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double screenWidth = MediaQuery.of(context).size.width;

        return Dialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Set the border radius to 0
          ),
          child: Container(
            color: Colors.white,
            height: 270,
            width: screenWidth,
            padding: const EdgeInsets.all(13.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildVSpacer(20),
                const Text(
                  'Congratulations !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Be Vietnam Pro',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                buildVSpacer(20),
                const Text(
                  'You will start getting bookings soon,\nEnsure your car is clean.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Be Vietnam Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                buildVSpacer(10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 40),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ShareCarScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEDB31B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
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
                    const Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Confirm Your Sharing',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            buildVSpacer(20),
            _buildTextHeader(
                title: 'Car Selected', size: 17, fontWeight: FontWeight.w500),
            buildVSpacer(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Card(
                elevation: 0,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                        color: Colors.grey), // Add this line for the border
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            const Image(image: AssetImage('assets/white_car.png')),
                            buildHSpacer(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                _buildTextHeader(
                                    title: 'Ford Figo RJ1UE0900',
                                    size: 17,
                                    fontWeight: FontWeight.w600),
                                _buildTextHeader(
                                    title: 'RJ1UE0900',
                                    size: 17,
                                    fontWeight: FontWeight.w400),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 18.0),
            //   child: Card(
            //     elevation: 0,
            //     child: Container(
            //       width: double.infinity,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(5.0),
            //         border: Border.all(color: Colors.grey), // Add this line for the border
            //
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Column(
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //             Row(
            //               children: [
            //                 Image(image: AssetImage('assets/white_car.png')),
            //                 buildHSpacer(10),
            //                 Expanded(
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.end, // Align at the right
            //                     mainAxisAlignment: MainAxisAlignment.end, // Align at the top
            //                     children: [
            //                       Container(
            //                         width: 93,
            //                         height: 20,
            //                         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            //                         decoration: BoxDecoration(color: Color(0xFFF4F4F4)),
            //                         child: Row(
            //                           mainAxisSize: MainAxisSize.min,
            //                           mainAxisAlignment: MainAxisAlignment.center,
            //                           crossAxisAlignment: CrossAxisAlignment.center,
            //                           children: [
            //                             Text(
            //                               'ID: A92TD3',
            //                               style: TextStyle(
            //                                 color: Colors.black,
            //                                 fontSize: 10,
            //                                 fontFamily: 'SF Pro Text',
            //                                 fontWeight: FontWeight.w400,
            //                                 height: 0,
            //                                 letterSpacing: -0.20,
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                       buildHSpacer(40),
            //                       Row(
            //                         children: [
            //                           Container(
            //                             width: 10,
            //                             height: 10,
            //                             decoration: ShapeDecoration(
            //                               color: Color(0xFF258E00),
            //                               shape: CircleBorder(),
            //                             ),
            //                           ),
            //                           Container(
            //                             width: 10,
            //                             height: 10,
            //                             decoration: ShapeDecoration(
            //                               color: Color(0xFF258E00),
            //                               shape: CircleBorder(),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //               ],
            //             ),
            //
            //
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            SizedBox(
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
                  const Positioned(
                    left: 23,
                    top: 161,
                    child: Opacity(
                      opacity: 0.50,
                      child: Text(
                        'Total Listing Days : 04 Days',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Be Vietnam Pro',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: -0.24,
                        ),
                      ),
                    ),
                  ),
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
                    left: 171,
                    top: 120,
                    child: Container(
                      width: 100,
                      height: 35,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF245196),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const ModifyListingScreen(
                                    initialTabIndex: 1,
                                  ),
                                ),
                              );
                            },
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
            ),

            buildVSpacer(15),
            _buildTextHeader(title: 'Select Your Car Location'),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Image.asset(
                'assets/map.png',
                width: double.infinity,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 40),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _showCongratulationsDialog,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF245196),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Confirm & Share',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
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
          style: TextStyle(
            fontSize: size ?? 13,
            fontWeight: fontWeight ?? FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
