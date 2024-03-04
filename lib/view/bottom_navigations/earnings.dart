import 'package:car_rental/view/my_earnings/my_earnings_screen.dart';
import 'package:car_rental/view/my_earnings/my_earnings_screen2.dart';
import 'package:car_rental/view/wallet/topup.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EarningsScreen extends StatelessWidget {
  const EarningsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 70, bottom: 20, left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'My Earnings',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 151,
                      height: 40,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: PopupMenuButton<String>(
                        onSelected: (value) {
                          // Handle the selected value here
                        },
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'Monthly',
                              child: Text('Monthly'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'All',
                              child: Text('All'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Car 1',
                              child: Text('Car 1'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Car 2',
                              child: Text('Car 2'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Car 3',
                              child: Text('Car 3'),
                            ),
                          ];
                        },
                        child: Row(
                          children: [
                            _buildTextHeader(title: 'Monthly'),
                            buildHSpacer(25),
                            const Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                _buildText(title: 'Checkout my wallet'),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Container(
                    // width: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const TopUpScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF245196),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'My Wallet',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            buildVSpacer(30),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildText(title: 'Time Duration'),
                    buildVSpacer(15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        width: 151,
                        height: 40,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: PopupMenuButton<String>(
                          onSelected: (value) {
                            // Handle the selected value here
                          },
                          itemBuilder: (BuildContext context) {
                            return <PopupMenuEntry<String>>[
                              const PopupMenuItem<String>(
                                value: 'Till date',
                                child: Text('Till date'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Last Week',
                                child: Text('Last Week'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Last Month',
                                child: Text('Last Month'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Custom',
                                child: Text('Custom'),
                              ),
                            ];
                          },
                          child: Row(
                            children: [
                              _buildTextHeader(title: 'Till Date'),
                              buildHSpacer(25),
                              const Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildText(title: 'Select Car'),
                    buildVSpacer(15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Container(
                        width: 151,
                        height: 40,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: PopupMenuButton<String>(
                          onSelected: (value) {
                            // Handle the selected value here
                          },
                          itemBuilder: (BuildContext context) {
                            return <PopupMenuEntry<String>>[
                              const PopupMenuItem<String>(
                                value: 'All',
                                child: Text('All'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Car 1',
                                child: Text('Car 1'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Car 2',
                                child: Text('Car 2'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Car 3',
                                child: Text('Car 3'),
                              ),
                            ];
                          },
                          child: Row(
                            children: [
                              _buildTextHeader(title: 'All'),
                              buildHSpacer(55),
                              const Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Card(
                color: Colors.white,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: const BorderSide(color: Colors.white, width: 1.0),
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monthly Earnings',
                        style: TextStyle(
                          fontSize: screenWidth * 0.038,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      buildVSpacer(10),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const MyEarningsScreen(),
                                  ),
                                );
                              },
                              child: Card(
                                color: Colors.white,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: const BorderSide(
                                      color: Colors.white, width: 1.0),
                                ),
                                child: Container(
                                  color: Colors.white,
                                  padding: const EdgeInsets.all(25.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '₹5,000',
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.038,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const Spacer(),
                                          const Icon(Icons.arrow_forward_ios)
                                        ],
                                      ),
                                      buildVSpacer(10),
                                      const Text(
                                        'This month earning till date',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              color: Colors.white,
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side:
                                    const BorderSide(color: Colors.white, width: 1.0),
                              ),
                              child: Container(
                                color: Colors.white,
                                padding: const EdgeInsets.all(25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '₹10,000',
                                          style: TextStyle(
                                            fontSize: screenWidth * 0.038,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Spacer(),
                                        const Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),
                                    buildVSpacer(10),
                                    const Text(
                                      'Total Monthly earning',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            buildVSpacer(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyEarningsScreen2(),
                    ),
                  );
                },
                child: Card(
                  color: Colors.white,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: const BorderSide(color: Colors.white, width: 1.0),
                  ),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My ratings analytics',
                          style: TextStyle(
                            fontSize: screenWidth * 0.038,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        buildVSpacer(10),
                        Row(
                          children: [
                            _buildText(
                              title: 'NA',
                              fontWeight: FontWeight.bold,
                            ),
                            Image.asset('assets/star.png'),
                            const Spacer(),
                            const Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                        buildVSpacer(20),
                        Center(
                          child: Container(
                            width: 280,
                            height: 64,
                            padding: const EdgeInsets.all(8.5),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF4F4F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26),
                              ),
                            ),
                            child: Row(
                              children: [
                                Image.asset('assets/grey_eye.png'),
                                buildHSpacer(10),
                                const Text(
                                  'Higher rated cars appear higher on search,\nget more views and more earnings',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        buildVSpacer(20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildVSpacer(10),
            buildVSpacer(30),
          ],
        ),
      ),
    );
  }

  Widget _buildTextHeader({
    required String title,
    double? size,
    FontWeight? fontWeight,
    Color? color,
  }) {
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

  Widget _buildText({
    required String title,
    double? size,
    FontWeight? fontWeight,
    Color? color,
  }) {
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
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
