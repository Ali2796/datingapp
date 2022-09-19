import 'package:dating_app/model_classes/model_personal_info.dart';
import 'package:dating_app/screens/user_age_page.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../utils/custom_color.dart';

class GenderCheckPage extends StatefulWidget {
  const GenderCheckPage({Key? key}) : super(key: key);

  @override
  State<GenderCheckPage> createState() => _GenderCheckPageState();
}

class _GenderCheckPageState extends State<GenderCheckPage> {
  ModelPersonalInfo personalInfo= ModelPersonalInfo();
  final googleSignIn = GoogleSignIn();
  bool borderEnabled1 = false;
  bool borderEnabled2 = false;
  bool borderEnabled3 = false;

  @override
  Widget build(BuildContext context) {
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
              onPressed: ()async {
               googleSignIn.disconnect().whenComplete(() async {
                  await FirebaseAuth.instance.signOut();
                });


                Navigator.of(context).pop();
              }),
        ),
        backgroundColor: CustomColors.backGroundColor,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "What is your\ngender? I'm a... ",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.tinos(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.headingTextFontColor,
                    ),
                  ),
                ),
                // CustomWidget.dropdownButton4(
                //     items: DataLists.sports,
                //     onChanged: (value) {},
                //     selectedValues: [],
                //     titleName: 'Sports'),
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                  child: CustomWidget.customContainer(
                      child: Text(
                        'Male',
                        style: GoogleFonts.tinos(
                            textStyle: Theme.of(context).textTheme.bodyText1,
                            color: borderEnabled1
                                ? Colors.red
                                : CustomColors.textFontColor,
                            fontSize: 18),
                      ),
                      height: 50,
                      borderEnabled: borderEnabled1,
                      onTap: () {
                        setState(() {
                          borderEnabled1 = true;
                          borderEnabled2 = false;
                          borderEnabled3 = false;
                          personalInfo.gender = 'male';
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserAgePage(),
                            ));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.customContainer(
                      child: Text(
                        'Female',
                        style: GoogleFonts.tinos(
                            textStyle: Theme.of(context).textTheme.bodyText1,
                            color: borderEnabled2
                                ? Colors.red
                                : CustomColors.textFontColor,
                            fontSize: 18),
                      ),
                      height: 50,
                      borderEnabled: borderEnabled2,
                      onTap: () {
                        setState(() {
                          borderEnabled1 = false;
                          borderEnabled2 = true;
                          borderEnabled3 = false;
                          personalInfo.gender = 'Female';
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserAgePage(),
                            ));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.customContainer(
                      child: Text(
                        'Non-Binary',
                        style: GoogleFonts.tinos(
                            textStyle: Theme.of(context).textTheme.bodyText1,
                            color: borderEnabled3
                                ? Colors.red
                                : CustomColors.textFontColor,
                            fontSize: 18),

                      ),
                      height: 50,
                      borderEnabled: borderEnabled3,
                      onTap: () {
                        setState(() {
                          borderEnabled1 = false;
                          borderEnabled2 = false;
                          borderEnabled3 = true;
                          personalInfo.gender = 'Non_Binary';
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserAgePage(),
                            ));
                      }),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
