import 'package:car_rental/view/add_new_car/add_new_car_screen.dart';
import 'package:car_rental/view/car_details/car_details_screen.dart';
import 'package:car_rental/view/share_car/share_car_screen.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:car_rental/view/widgets/custom_car_listings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Builder(builder: (context) {
      return Scaffold(
        floatingActionButton: SizedBox(
          width: 130.0, // Set the desired width
          height: 50.0,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ShareCarScreen(),
                ),
              );
            },
            backgroundColor: Color(0xffEDB31B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              'Share Car',
              style: GoogleFonts.poppins(fontSize: 15),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppBar(
                leading: GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Image.asset('assets/menu.png'),
                ),
                title: Text(
                  "Bengaluru, KA",
                  style: GoogleFonts.beVietnamPro(fontSize: 14),
                ),
              ),
              buildVSpacer(30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Text(
                      'Top and Earning Cars',
                      style: GoogleFonts.beVietnamPro(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => AddNewCar(),
                          ),
                        );
                      },
                      child: Container(
                        width: 109,
                        height: 36,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF245196)),
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Add Car List',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF245196),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              buildVSpacer(20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CarDetailsScreen(),
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/car.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 13,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            // Add your button's action here
                          },
                          child: Text(
                            'Explore Now',
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'New Cars listings',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CarDetailsScreen(),
                    ),
                  );
                },
                child: Container(
                  height:
                      400, // Set a specific height or use MediaQuery.of(context).size.height for full height
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: CustomCarListings(
                          text1: 'Ford Eco sport',
                          imagePath: 'assets/car_listing.png',
                          text2: 'Variant name',
                          text3: 'Petrol',
                          text4: 'Manual',
                          text5: '12345Km',
                        ),
                      );
                    },
                  ),
                ),
              ),
              buildVSpacer(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'Top Rating Cars',
                  style: GoogleFonts.beVietnamPro(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              buildVSpacer(20),
              Stack(
                children: [
                  Image.asset(
                    "assets/car.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 13,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button's action here
                        },
                        child: Text(
                          'Explore Now',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
