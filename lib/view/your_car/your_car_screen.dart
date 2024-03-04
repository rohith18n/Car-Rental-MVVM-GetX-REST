
import 'package:car_rental/view/add_new_car/add_new_car_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourCarScreen extends StatefulWidget {
  const YourCarScreen({super.key});

  @override
  _YourCarScreenState createState() => _YourCarScreenState();
}

class _YourCarScreenState extends State<YourCarScreen> {
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
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Your Cars',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(20),
            Image.asset('assets/Group 10935.png'),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: _buildTextHeader(
                  title:
                      'With high demands for a newe vehicles , you’ll\nattract more\nrenters,boost your car’s Value',
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20),
              child: SizedBox(
                width: 160,
                height: 40,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AddNewCar(),
                      ),
                    );
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
                      'Add a New Car',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Card(
                elevation: 5,
                child: Container(
                  height: 130,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage(
                              'assets/white_car.png'), // Set your desired height
                        ),
                        buildHSpacer(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildText(title: 'Nexon MT DL05PQ1234'),
                            buildVSpacer(10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF245196),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Text(
                                'Listed from 30 Oct - 29 Nov',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Be Vietnam Pro',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ),
                            buildVSpacer(10),
                            SizedBox(
                              width: 54,
                              height: 13,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 17,
                                    top: 0,
                                    child: Text(
                                      '4.8/5.0',
                                      style: TextStyle(
                                        color: Color(0xFF121212),
                                        fontSize: 10,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w300,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFEDB31B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Card(
                elevation: 5,
                child: Container(
                  height: 130,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage(
                              'assets/white_car.png'), // Set your desired height
                        ),
                        buildHSpacer(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildText(title: 'Nexon MT DL05PQ1234'),
                            buildVSpacer(10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF245196),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Text(
                                'Listed from 30 Oct - 29 Nov',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Be Vietnam Pro',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ),
                            buildVSpacer(10),
                            SizedBox(
                              width: 54,
                              height: 13,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 17,
                                    top: 0,
                                    child: Text(
                                      '4.8/5.0',
                                      style: TextStyle(
                                        color: Color(0xFF121212),
                                        fontSize: 10,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w300,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFEDB31B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Card(
                elevation: 5,
                child: Container(
                  height: 130,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage(
                              'assets/white_car.png'), // Set your desired height
                        ),
                        buildHSpacer(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildText(title: 'Nexon MT DL05PQ1234'),
                            buildVSpacer(10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF245196),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Text(
                                'Listed from 30 Oct - 29 Nov',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Be Vietnam Pro',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ),
                            buildVSpacer(10),
                            SizedBox(
                              width: 54,
                              height: 13,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 17,
                                    top: 0,
                                    child: Text(
                                      '4.8/5.0',
                                      style: TextStyle(
                                        color: Color(0xFF121212),
                                        fontSize: 10,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w300,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFEDB31B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Card(
                elevation: 5,
                child: Container(
                  height: 130,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage(
                              'assets/white_car.png'), // Set your desired height
                        ),
                        buildHSpacer(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildText(title: 'Nexon MT DL05PQ1234'),
                            buildVSpacer(10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF245196),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Text(
                                'Listed from 30 Oct - 29 Nov',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Be Vietnam Pro',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ),
                            buildVSpacer(10),
                            SizedBox(
                              width: 54,
                              height: 13,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 17,
                                    top: 0,
                                    child: Text(
                                      '4.8/5.0',
                                      style: TextStyle(
                                        color: Color(0xFF121212),
                                        fontSize: 10,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w300,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFEDB31B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Card(
                elevation: 5,
                child: Container(
                  height: 130,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Image(
                          image: AssetImage(
                              'assets/white_car.png'), // Set your desired height
                        ),
                        buildHSpacer(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildText(title: 'Nexon MT DL05PQ1234'),
                            buildVSpacer(10),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 6),
                              decoration: ShapeDecoration(
                                color: const Color(0xFF245196),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Text(
                                'Listed from 30 Oct - 29 Nov',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Be Vietnam Pro',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ),
                            buildVSpacer(10),
                            SizedBox(
                              width: 54,
                              height: 13,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 17,
                                    top: 0,
                                    child: Text(
                                      '4.8/5.0',
                                      style: TextStyle(
                                        color: Color(0xFF121212),
                                        fontSize: 10,
                                        fontFamily: 'Be Vietnam Pro',
                                        fontWeight: FontWeight.w300,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFEDB31B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(20),
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

  Widget _buildTextHeader(
      {required String title,
      double? size,
      FontWeight? fontWeight,
      Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: size ?? 15,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: color ?? Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
