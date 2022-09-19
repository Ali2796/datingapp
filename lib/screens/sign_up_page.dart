import 'package:dating_app/screens/email_verification_page.dart';
import 'package:dating_app/screens/gender_check_page.dart';
import 'package:dating_app/screens/login_page.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:dating_app/utils/login_provider.dart';
import 'package:dating_app/widgets/carousel_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          const CarouselImagesPage(),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmailVerification(),
                          ));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      // width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.09),
                              offset: const Offset(
                                0.1,
                                1.5,
                              ),
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.09),
                              offset: const Offset(
                                -0.1,
                                -0.001,
                              ),
                              spreadRadius: -1,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.email,
                            size: 30,
                            color: CustomColors.signupOptionColors,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Sign up with Email',
                            style: GoogleFonts.tinos(
                                textStyle:
                                    Theme.of(context).textTheme.bodyText1,
                                color: CustomColors.headingTextFontColor,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await LoginProviders.signInWithGoogle();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GenderCheckPage(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        //width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.09),
                                offset: const Offset(
                                  0.1,
                                  1.5,
                                ),
                              ),
                              BoxShadow(
                                color: Colors.black.withOpacity(0.09),
                                offset: const Offset(
                                  -0.1,
                                  -0.001,
                                ),
                                spreadRadius: -1,
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Image(
                                image: AssetImage('assets/images/google.png'),
                              ),
                            ),
                            Text(
                              'Sign up with Google',
                              style: GoogleFonts.tinos(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText1,
                                  color: CustomColors.headingTextFontColor,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    // width: MediaQuery.of(context).size.width * 0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Text(
                            'Terms & Conditions',
                            style: GoogleFonts.tinos(
                                textStyle:
                                    Theme.of(context).textTheme.bodyText1,
                                color: CustomColors.buttonTextFontColor,
                                fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2.0),
                          child: Text(
                            'Privacy policy',
                            style: GoogleFonts.tinos(
                                textStyle:
                                    Theme.of(context).textTheme.bodyText1,
                                color: CustomColors.buttonTextFontColor,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    //width: MediaQuery.of(context).size.width*0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12.0,
                          ),
                          child: Text(
                            'Already have an account?',
                            style: GoogleFonts.tinos(
                                textStyle:
                                    Theme.of(context).textTheme.bodyText1,
                                color: CustomColors.buttonTextFontColor,
                                fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0,),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: CustomColors.buttonBackgroundColor,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.09),
                                      offset: const Offset(
                                        0.1,
                                        1.5,
                                      ),
                                    ),
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.09),
                                      offset: const Offset(
                                        -0.1,
                                        -0.001,
                                      ),
                                      spreadRadius: -1,
                                    ),
                                  ]),
                              child: Text(
                                'LOGIN',
                                style: GoogleFonts.tinos(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyText1,
                                    color: CustomColors.backGroundColor,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/white_logo.png',
              height: 200,
            ),
          )
        ],
      ),
    );
  }


}
