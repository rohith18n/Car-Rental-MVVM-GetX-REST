import 'package:car_rental/view/bottom_navigations/bottom_nav_bar.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class EditProfileScreen2 extends StatefulWidget {
  const EditProfileScreen2({super.key});

  @override
  _EditProfileScreen2State createState() => _EditProfileScreen2State();
}

class _EditProfileScreen2State extends State<EditProfileScreen2> {
  String otps = '';
  OtpFieldController otpController = OtpFieldController();

  void _showUploadBottomSheetFoREditImage() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
      ),
      builder: (context) {
        return Container(
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage('assets/gallery.png'),
                          color: Colors.black,
                        ),
                        buildHSpacer(10),
                        Text(
                          'Gallery',
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage('assets/camera2.png'),
                          color: Colors.black,
                        ),
                        buildHSpacer(10),
                        Text(
                          'Camera',
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showUploadBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
      ),
      builder: (context) {
        return Container(
          height: 350,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildTextHeader(title: 'New Password'),
              buildVSpacer(5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: buildCustomTextField1(),
              ),
              buildVSpacer(5),
              _buildTextHeader(title: 'Re-enter new Password'),
              buildVSpacer(5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: buildCustomTextField1(),
              ),
              buildVSpacer(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEDB31B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Change Password',
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
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFEDB31B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'ADD NEW ADDRESS',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppBottomNavBar(
                            index: 0,
                          ),
                        ),
                      );
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
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'My Profile',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildVSpacer(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 100, child: Image.asset('assets/profile_pic1.png')),
                GestureDetector(
                  onTap: () {
                    _showUploadBottomSheetFoREditImage();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 70.0),
                    child: Icon(Icons.edit),
                  ),
                )
              ],
            ),
            _buildTextHeader(title: 'Name'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(),
            ),
            _buildTextHeader(
              title: 'Email ID',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        // Show dialog upon clicking the Save button
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              content: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 900,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        _buildTextHeader(
                                            title:
                                                'Enter OTP sent to your abc@*****.com',
                                            size: 13),
                                        buildVSpacer(30),
                                        OTPTextField(
                                            otpFieldStyle: OtpFieldStyle(
                                              backgroundColor:
                                                  const Color(0xFFDDDDDD),
                                            ),
                                            controller: otpController,
                                            length: 4,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            textFieldAlignment:
                                                MainAxisAlignment.spaceAround,
                                            fieldWidth: 50,
                                            fieldStyle: FieldStyle.box,
                                            outlineBorderRadius: 8,
                                            style: const TextStyle(fontSize: 17),
                                            onChanged: (pin) {
                                              otps = pin;
                                              print("Changed: $otps");
                                            },
                                            onCompleted: (pin) {
                                              print("Completed: $pin");
                                            }),
                                        buildVSpacer(30),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40.0),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () async {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color(0xFF245196),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.all(12.0),
                                                child: Text(
                                                  'Verify',
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
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Image.asset('assets/verified.png'))),
            ),
            _buildTextHeader(title: 'Occupation'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(),
            ),
            _buildTextHeader(title: 'Phone no'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        // Show dialog upon clicking the Save button
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              content: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 900,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        _buildTextHeader(
                                            title:
                                                'Enter OTP sent to your 630*******',
                                            size: 13),
                                        buildVSpacer(30),
                                        OTPTextField(
                                            otpFieldStyle: OtpFieldStyle(
                                              backgroundColor:
                                                  const Color(0xFFDDDDDD),
                                            ),
                                            controller: otpController,
                                            length: 4,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            textFieldAlignment:
                                                MainAxisAlignment.spaceAround,
                                            fieldWidth: 50,
                                            fieldStyle: FieldStyle.box,
                                            outlineBorderRadius: 8,
                                            style: const TextStyle(fontSize: 17),
                                            onChanged: (pin) {
                                              otps = pin;
                                              print("Changed: $otps");
                                            },
                                            onCompleted: (pin) {
                                              print("Completed: $pin");
                                            }),
                                        buildVSpacer(30),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40.0),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              onPressed: () async {},
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: const Color(0xFF245196),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                ),
                                              ),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.all(12.0),
                                                child: Text(
                                                  'Verify',
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
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Image.asset('assets/verified.png'))),
            ),
            _buildTextHeader(title: 'Password'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        _showUploadBottomSheet();
                      },
                      child: const Icon(Icons.edit))),
            ),
            _buildTextHeader(title: 'Host Bio'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: buildCustomTextField1(inputContainerHeight: 80),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextHeader(
      {required String title,
      double? size,
      FontWeight? fontWeight,
      Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
        ),
      ),
    );
  }
}
