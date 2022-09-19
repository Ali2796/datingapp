import 'package:dating_app/model_classes/model_qualification_activities_info.dart';
import 'package:dating_app/screens/add_images.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:dating_app/utils/data_lists.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserPersonalActivities extends StatefulWidget {
  const UserPersonalActivities({Key? key}) : super(key: key);

  @override
  State<UserPersonalActivities> createState() => _UserPersonalActivitiesState();
}

class _UserPersonalActivitiesState extends State<UserPersonalActivities> {
  var globalKey = GlobalKey<FormState>();
  ModelQualificationAndActivities qualificationAndActivities = ModelQualificationAndActivities();
  List<String> sportsSelected = [];
  List<String> creativitySelected = [];
  String? smokingSelected;
  String? startSignSelected;

  var appBar = AppBar();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        backgroundColor: CustomColors.appBarColor,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Form(
              key: globalKey,
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "More about me...!",
                      style: GoogleFonts.tinos(
                          textStyle: Theme.of(context).textTheme.headline4,
                          color: CustomColors.headingTextFontColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 8.0),
                  //   child: CustomWidget.dropdownButton2(
                  //     context: context,
                  //     items: DataLists.creativity,
                  //     onChanged: (value) {
                  //       creativitySelected = value.toString();
                  //     },
                  //     titleName: 'Creativity',
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                    child: CustomWidget.dropdownButton3(
                      // validate: (value){
                      //
                      //   if (sportsSelected == null || sportsSelected.isEmpty) {
                      //     return 'Please select your city';
                      //   }
                      //   return null;
                      // },
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select the value';
                        }
                        return null;
                      },
                      items: DataLists.creativity,
                      titleName: 'Creativity',

                      onChanged: (List<String> value) {
                        creativitySelected = value;
                      },
                      selectedValues: creativitySelected,
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                  //   child: CustomWidget.dropdownButton3(
                  //     items: DataLists.sports,
                  //     onChanged: (List<dynamic> value) {
                  //      setState(() {
                  //        selected = value as List<String>;
                  //      });
                  //     },
                  //     titleName: 'Sports', selectedValues: selected,
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                    child: CustomWidget.dropdownButton3(
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select the value';
                        }
                        return null;
                      },
                      items: DataLists.sports,
                      titleName: 'Sports',
                      onChanged: (List<String> value) {
                        sportsSelected = value;
                      },
                      selectedValues: sportsSelected,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                    child: CustomWidget.dropdownButton2(
                      context: context,
                      items: DataLists.smoking,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select the value';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        smokingSelected = value.toString();
                      },
                      titleName: 'Do you smoke',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                    child: CustomWidget.dropdownButton2(
                      context: context,
                      items: DataLists.startSigns,
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select your star';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        startSignSelected = value.toString();
                      },
                      titleName: 'Your Star Sign',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (globalKey.currentState!.validate()) {
                        qualificationAndActivities.creativity = creativitySelected.toString();
                        qualificationAndActivities.sports = sportsSelected.toString();
                        qualificationAndActivities.smoke = smokingSelected.toString();
                        qualificationAndActivities.starSign = startSignSelected.toString();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AddImages(),
                              ));

                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              color: CustomColors.buttonBackgroundColor,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.06),
                                    offset: const Offset(
                                      0,
                                      2,
                                    ),
                                    spreadRadius: 3,
                                    blurRadius: 1),
                              ]),
                          child: Text('Continue',
                              style: CustomColors.buttonTextStyle(context))),
                    ),
                  ),
                  GestureDetector(
                    // highlightColor: Colors.transparent,
                    // splashColor: Colors.transparent,
                    // hoverColor: Colors.transparent,

                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddImages(),
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              color: CustomColors.buttonBackgroundColor,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.06),
                                    offset: const Offset(
                                      0,
                                      2,
                                    ),
                                    spreadRadius: 3,
                                    blurRadius: 1),
                              ]),
                          child: Text('Skip',
                              style: CustomColors.buttonTextStyle(context))),
                    ),
                  ),
                ],
              )),
        )),
      ),
    );
  }
}
