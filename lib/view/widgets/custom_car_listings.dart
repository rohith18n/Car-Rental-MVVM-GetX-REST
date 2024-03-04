import 'package:flutter/material.dart';

class CustomCarListings extends StatelessWidget {
  final String imagePath;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;

  CustomCarListings({
    required this.imagePath,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: Card(
        color: Colors.white,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15.0),
          child: Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imagePath,
                    width: screenWidth * 0.3,
                    height: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          fontSize: screenWidth * 0.04, // Adjust text size based on screen width
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        text2,
                        style: TextStyle(
                          fontSize: screenWidth * 0.03, // Adjust text size based on screen width
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          BulletPoint(text3),
                          BulletPoint(text4),
                          BulletPoint(text5),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  BulletPoint(this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 5.0,
          color: Colors.black,
        ),
        SizedBox(width: 5.0),
        Text(
          text,
          style: TextStyle(fontSize:11), // Adjust text size based on screen width
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
}
