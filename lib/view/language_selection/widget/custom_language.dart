import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class CustomLanguage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String text;

  const CustomLanguage({super.key, 
    required this.title,
    required this.subtitle,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        width: 160,
        height: 130,
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              subtitle,
              style: const TextStyle(
                color: Colors.black38,
                fontSize: 14.0,
              ),
            ),
            buildVSpacer(30),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black26,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
