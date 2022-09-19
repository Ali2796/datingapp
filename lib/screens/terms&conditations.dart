import 'package:dating_app/screens/bottom_navigationBar_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/custom_color.dart';

class TermsAndConditation extends StatelessWidget {
  const TermsAndConditation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = GoogleFonts.tinos(
        textStyle: Theme.of(context).textTheme.headline6,
        color: CustomColors.textFontColor,
        fontWeight: FontWeight.bold);
    TextStyle linkStyle =
        const TextStyle(color: CustomColors.buttonBackgroundColor);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: CustomColors.headingTextFontColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        backgroundColor: CustomColors.appBarColor,
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "You’re nearly done..",
                  style: GoogleFonts.tinos(
                      textStyle: Theme.of(context).textTheme.headline4,
                      color: CustomColors.headingTextFontColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: defaultStyle,
                  children: <TextSpan>[
                    const TextSpan(
                        text:
                            'By Continuing, you are confirming that\nyou have read our'),
                    TextSpan(
                        text: ' Terms &Conditions',
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //   print('Terms &Conditions"');
                          }),
                    const TextSpan(text: '\n and '),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: linkStyle,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //print('Privacy Policy."');
                          }),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return BottomNavigationBarForDating();
                    },
                  ));
                },
                child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: CustomColors.buttonBackgroundColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Text('Agree',
                        style: CustomColors.buttonTextStyle(context))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
