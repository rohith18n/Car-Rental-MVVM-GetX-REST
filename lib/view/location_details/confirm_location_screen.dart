import 'package:car_rental/view/location_details/location_details_screen2.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmLocationDetails extends StatefulWidget {
  @override
  _ConfirmLocationDetailsState createState() => _ConfirmLocationDetailsState();
}

class _ConfirmLocationDetailsState extends State<ConfirmLocationDetails> {
  TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/maplarge.png',
              scale: 0.5,
            ),
            Positioned(
              top: 60.0,
              left: 20.0,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  buildHSpacer(15),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      controller: _textFieldController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Set Location .......',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Container(
                  width: 200,
                  height: 200,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          _buildText(
                            title: 'Your Current Location',
                          ),
                          Spacer(),
                          Container(
                            width: 55,
                            height: 22,
                            decoration: ShapeDecoration(
                              color: Color(0xFFC5161D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.93),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 13.0, top: 4),
                              child: Text(
                                'EDIT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      buildVSpacer(15),
                      _buildText(
                          title: '36, Pundalik Nagar, near- nimazari naka'
                              'Mamure, Noida- Sector 66, Noida'),
                      buildVSpacer(15),
                      Row(
                        children: [
                          Image.asset('assets/homelocation.png'),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18.0,
                            ),
                            child: Container(
                              width: 250,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          LocationDetailsScreen2(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFEDB31B),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'Confirm Location',
                                    style: TextStyle(
                                      color: Colors.black,
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
                    ],
                  ),
                )),
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
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Center(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.beVietnamPro(
              fontSize: size ?? 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
