
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadCarImages extends StatefulWidget {
  const UploadCarImages({super.key});

  @override
  _UploadCarImagesState createState() => _UploadCarImagesState();
}

class _UploadCarImagesState extends State<UploadCarImages> {
  void _showUploadBottomSheet() {
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

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color(0xffEDB31B),
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
                          'Upload Car Images',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                        'assets/white_car.png'), // Set your desired height
                  ),
                  const Spacer(),
                  _buildText(title: 'Nexon MT DL05PQ1234')
                ],
              ),
            ),
            Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    children: [
                      _buildText(title: 'Important Tips'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                8.0), // Set your desired border radius
                            color: const Color(0xff000AFF),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 18.0, top: 20),
                                child: Row(
                                  children: [
                                    const Image(
                                        image: AssetImage('assets/sun.png'),
                                        color: Colors.white),
                                    buildHSpacer(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Shoot during day time',
                                          style: TextStyle(
                                              fontSize: screenWidth * 0.038,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Daylight is great for picture!',
                                          style: TextStyle(
                                              fontSize: screenWidth *
                                                  0.028, // Adjust the font size as needed
                                              fontWeight: FontWeight
                                                  .w500, // Adjust the font weight as needed
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              buildVSpacer(10),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Row(
                                  children: [
                                    const Image(
                                        image: AssetImage('assets/camera2.png'),
                                        color: Colors.white),
                                    buildHSpacer(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Click a clear picture',
                                          style: TextStyle(
                                              fontSize: screenWidth * 0.038,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Avoid hazy/blur images of your car',
                                          style: TextStyle(
                                              fontSize: screenWidth *
                                                  0.028, // Adjust the font size as needed
                                              fontWeight: FontWeight
                                                  .w500, // Adjust the font weight as needed
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              buildVSpacer(10),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Row(
                                  children: [
                                    const Image(
                                        image: AssetImage('assets/camera2.png'),
                                        color: Colors.white),
                                    buildHSpacer(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Shoot all photos in landscape mode',
                                          style: TextStyle(
                                              fontSize: screenWidth * 0.038,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Guest see photos in landscape mode only',
                                          style: TextStyle(
                                              fontSize: screenWidth *
                                                  0.028, // Adjust the font size as needed
                                              fontWeight: FontWeight
                                                  .w500, // Adjust the font weight as needed
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              buildVSpacer(10),
                              Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: Row(
                                  children: [
                                    const Image(
                                        image: AssetImage('assets/heart.png'),
                                        color: Colors.white),
                                    buildHSpacer(10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Keep background & foreground clean',
                                          style: TextStyle(
                                              fontSize: screenWidth * 0.038,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Make sure no objects come in front of the car',
                                          style: TextStyle(
                                              fontSize: screenWidth *
                                                  0.028, // Adjust the font size as needed
                                              fontWeight: FontWeight
                                                  .w500, // Adjust the font weight as needed
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              buildVSpacer(10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: _buildText(title: 'Reference Images'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: _buildText(
                title: 'Please refer pictures for uploading image of car',
                size: 13,
              ),
            ),
            buildVSpacer(15),
            SizedBox(
              height: 110, // Set the desired height of the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Replace carImages with your list of image URLs
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Container(
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.0),
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/car_thumbnail.png'), // Replace with your image URLs
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: _buildText(
                title: 'How to click images',
                size: 14,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10),
              child: Image(
                image: AssetImage(
                    'assets/Rectangle 3790.png'), // Set your desired height
              ),
            ),
            buildVSpacer(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _showUploadBottomSheet();
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
                      'Add Photos',
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
}
