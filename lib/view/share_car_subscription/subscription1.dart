import 'package:car_rental/view/share_car_rental/choose_sharing_details2.dart';
import 'package:car_rental/view/share_car_subscription/subscription2.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:car_rental/view/widgets/custom_time_slider.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';

class SubscriptionScreen1 extends StatefulWidget {
  const SubscriptionScreen1({super.key});

  @override
  _SubscriptionScreen1State createState() => _SubscriptionScreen1State();
}

class _SubscriptionScreen1State extends State<SubscriptionScreen1> {
  CleanCalendarController calendarController = CleanCalendarController(
    minDate: DateTime(2023, 1, 1),
    maxDate: DateTime(2023, 12, 31),
  );

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Card(
        elevation: 5,
        child: Container(
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Card(
                  elevation: 8,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              _buildTextHeader(title: 'Mon,4th Oct\n4:30 PM'),
                              const Spacer(),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.arrow_right_alt,
                                    size: 35,
                                  ),
                                  _buildTextHeader(
                                      title: '2 months',
                                      fontWeight: FontWeight.w400,
                                      size: 10)
                                ],
                              ),
                              const Spacer(),
                              _buildTextHeader(title: 'Wed,7th Oct\n4:30 PM'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              buildVSpacer(20),
              _buildTextHeader(
                  title: 'Select the Start & End time',
                  fontWeight: FontWeight.w400),
              buildVSpacer(10),
              _buildTextHeader(
                title: 'Start Time',
              ),
              TimeSlider(
                sliderColor: const Color(0xff258E00),
                onTimeSelected: (selectedTime) {
                  print('Selected Time: $selectedTime');
                },
              ),
              buildVSpacer(10),
              _buildTextHeader(
                title: 'End Time',
              ),
              TimeSlider(
                sliderColor: const Color(0xffF7B144),
                onTimeSelected: (selectedTime) {
                  print('Selected Time: $selectedTime');
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SubscriptionScreen2(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF245196),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Set Time/Date',
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
      ),
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
                          'Subscription',
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
            SizedBox(
              height: 700,
              child: ScrollableCleanCalendar(
                calendarController: calendarController,
                layout: Layout.BEAUTY,
                calendarCrossAxisSpacing: 0,
                daySelectedBackgroundColor: const Color(0XFF258E00),
              ),
            ),
            buildVSpacer(20),
          ],
        ),
      ),
    );
  }

  // Function to show the pop-up
  void _showPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Material(
            // Wrap the AlertDialog with Material
            type: MaterialType.transparency, // Make it transparent
            child: AlertDialog(
              content: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  height: 350,
                  child: Column(
                    children: [
                      Card(
                        elevation: 3,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                5.0), // Set border radius to 10
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    _buildTextHeader(
                                        title: 'Mon,4th Oct\n4:30 PM'),
                                    const Spacer(),
                                    const Icon(
                                      Icons.arrow_right_alt,
                                      size: 35,
                                    ),
                                    const Spacer(),
                                    _buildTextHeader(
                                        title: 'Wed,7th Oct\n4:30 PM'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      buildVSpacer(20),
                      _buildTextHeader(
                          title: 'Select the Start & End time',
                          fontWeight: FontWeight.w400),
                      buildVSpacer(10),
                      _buildTextHeader(
                        title: 'Start Time',
                      ),
                      TimeSlider(
                        sliderColor: const Color(0xff258E00),
                        onTimeSelected: (selectedTime) {
                          print('Selected Time: $selectedTime');
                        },
                      ),
                      buildVSpacer(10),
                      _buildTextHeader(
                        title: 'End Time',
                      ),
                      TimeSlider(
                        sliderColor: const Color(0xffF7B144),
                        onTimeSelected: (selectedTime) {
                          print('Selected Time: $selectedTime');
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const ChooseSharingDetails(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF245196),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Set Time/Date',
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
              ),
            ));
      },
    );
  }

  Widget _buildTextHeader({
    required String title,
    double? size,
    FontWeight? fontWeight, // Added fontWeight parameter
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: size ?? 13,
            fontWeight: fontWeight ??
                FontWeight
                    .w500, // Use the provided fontWeight or default to FontWeight.w500
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
