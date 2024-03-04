import 'package:car_rental/view/language_selection/widget/custom_language.dart';
import 'package:car_rental/view/widgets/app_widgets.dart';
import 'package:car_rental/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageSection extends StatefulWidget {
  const LanguageSection({super.key});

  @override
  State createState() => _LanguageSectionState();
}

class _LanguageSectionState extends State<LanguageSection>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                  minWidth: MediaQuery.of(context).size.width),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
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
                              alignment: Alignment.center,
                              child: Text(
                                'Language Selection',
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    buildVSpacer(20),
                    Image.asset(
                      "assets/language.png",
                      // height: 70,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomLanguage(
                            title: 'English',
                            subtitle: 'ENGLISH',
                            text: 'A',
                          ),
                          buildHSpacer(10),
                          const CustomLanguage(
                            title: 'हिंदी',
                            subtitle: 'HINDI',
                            text: 'आ',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomLanguage(
                            title: 'मराठी',
                            subtitle: 'MARATHI',
                            text: 'म',
                          ),
                          buildHSpacer(10),
                          const CustomLanguage(
                            title: 'ਪੰਜਾਬੀ',
                            subtitle: 'PUNJABI',
                            text: 'ਪੰ',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomLanguage(
                            title: 'ಕನ್ನಡ',
                            subtitle: 'KANNAD',
                            text: 'ಕ',
                          ),
                          buildHSpacer(10),
                          const CustomLanguage(
                            title: 'Others',
                            subtitle: 'OTHERS',
                            text: 'आ - A',
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: 'Back',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    buildVSpacer(20)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
