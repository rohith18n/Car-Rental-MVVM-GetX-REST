import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox buildVSpacer(double height) => SizedBox(height: height);

SizedBox buildHSpacer(double width) => SizedBox(width: width);

Container buildCustomTextField1({
  String? hintText,
  double? hMargin,
  double? vMargin,
  double? headerSize,
  Widget? suffixIcon,
  double? inputContainerHeight,
  bool? expands,
  TextEditingController? controller, // Add controller parameter
  String? Function(String?)? validator, // Add validator parameter
}) {
  return Container(
    margin:
        EdgeInsets.symmetric(horizontal: hMargin ?? 0, vertical: vMargin ?? 20),
    width: double.maxFinite,
    color: Colors.transparent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: Container(
            padding: const EdgeInsets.only(left: 18),
            height: inputContainerHeight ?? 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: TextFormField(
                controller: controller, // Assign controller to TextFormField
                expands: expands ?? false,
                maxLines: null,
                minLines: null,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: hintText ?? 'Enter Text',
                  hintStyle: GoogleFonts.beVietnamPro(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  suffixIcon: suffixIcon,
                ),
                validator: validator, // Add validator
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildTextHeader({
  required String title,
  double? size,
  FontWeight? fontWeight,
  String? Function(String?)? validator, // Add validator parameter
  TextEditingController? controller, // Add controller parameter
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: TextFormField(
        controller: controller, // Assign controller to TextFormField
        decoration: InputDecoration(
          labelText: title,
        ),
        style: TextStyle(
          fontSize: size ?? 14,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontFamily: 'Poppins',
        ),
        validator: validator, // Add validator
      ),
    ),
  );
}
