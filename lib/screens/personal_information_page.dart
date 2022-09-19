import 'package:dating_app/model_classes/model_personal_info.dart';
import 'package:dating_app/screens/qualification_info_page.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:dating_app/utils/data_lists.dart';
import 'package:dating_app/utils/validation.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({Key? key}) : super(key: key);

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {

  TextEditingController? _firstNameController;
  var globalKey = GlobalKey<FormState>();
  ModelPersonalInfo personalInfo= ModelPersonalInfo();


  String? heightSelected;
  bool maritalStatus = false;
  String? maritalStatusSelected;
  String? religionSelected;
  String? childrenStatusSelected;
  String? sectSelected;
  String? casteSelected;
  var appBar = AppBar();

  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController();
  }

  @override
  void dispose() {
    _firstNameController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width;
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
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Form(
            key: globalKey,
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "The essentials...",
                    style: GoogleFonts.tinos(
                        textStyle: Theme.of(context).textTheme.headline4,
                        color: CustomColors.headingTextFontColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                // Align(
                //   alignment: Alignment.bottomRight,
                //   child: Text(
                //     'All fields are mandatory*',
                //     style: GoogleFonts.openSans(
                //         textStyle: Theme.of(context).textTheme.bodyText1,
                //         color: CustomColors.textFontColor),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                //   child: CustomWidget.dropdownButton2(
                //     context: context,
                //     validate: (value) =>
                //         ModelValidation.commonValidation(value.toString()),
                //     items: DataLists.profileItems,
                //     onChanged: (value) {
                //       profileSelected = value.toString();
                //     },
                //     titleName: const Text(
                //       'Profile For',
                //       style: TextStyle(color: CustomColors.textFontColor),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.customTextField3(
                      //  validate: (value)=>ModelValidation.commonValidation(value.toString()),
                      titleName: 'My Name',
                      validate: (value) =>
                          ModelValidation.commonValidation(value.toString()),
                      controller: _firstNameController,
                      context: context),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                //   child: CustomWidget.customTextField(
                //       //validate: (value)=>ModelValidation.commonValidation(value.toString()),
                //       titleName: 'Last Name',
                //       controller: _secondNameController),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                //   child: CustomWidget.dropdownButton2(
                //       context: context,
                //       validate: (value) =>
                //           ModelValidation.commonValidation(value.toString()),
                //       items: DataLists.genderItems,
                //       onChanged: (value) {
                //         genderSelected = value.toString();
                //       },
                //       titleName: const Text(
                //         'Gender',
                //         style: TextStyle(color: CustomColors.textFontColor),
                //       )),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.dropdownButton2(
                      context: context,
                      items: DataLists.height,
                      onChanged: (value) {
                        heightSelected = value.toString();
                      },
                      titleName: 'My Height',
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select your Height';
                        }
                        return null;
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.dropdownButton2(
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select your Material Status';
                        }
                        return null;
                      },
                      context: context,
                      items: DataLists.maritalStatusList,
                      titleName: 'My Marital Status',
                      onChanged: (value) {
                        maritalStatusSelected = value.toString();

                        maritalStatus = value.toString().contains('Divorced') ||
                            value.toString().contains('Widowed') ||
                            value.toString().contains('Awaiting Divorced') ||
                            value.toString().contains('Annulled');

                        setState(() {});
                      }),
                ),

                maritalStatus
                    ? Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: CustomWidget.dropdownButton2(
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return '      Please select your Children Status';
                              }
                              return null;
                            },
                            context: context,
                            items: DataLists.childrenStatus,
                            titleName: 'Any Children?',
                            onChanged: (value) {
                              childrenStatusSelected = value.toString();
                            }),
                      )
                    : const SizedBox(),
                // Padding(
                //   padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                //   child: SizedBox(
                //     width: MediaQuery.of(context).size.width,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Expanded(
                //           child: Padding(
                //             padding: const EdgeInsets.only(right: 4.0),
                //             child: CustomWidget.dropdownButton2(
                //                 context: context,
                //                 titleName: const Text(
                //                   'Day',
                //                   style: TextStyle(
                //                       color: CustomColors.textFontColor),
                //                 ),
                //                 items: DataLists.listOfDays,
                //                 onChanged: (value) {}),
                //           ),
                //         ),
                //         Expanded(
                //             child: Padding(
                //           padding: const EdgeInsets.all(4.0),
                //           child: CustomWidget.dropdownButton2(
                //               context: context,
                //               titleName: const FittedBox(
                //                 child: Text('Month',
                //                     style: TextStyle(
                //                         color: CustomColors.textFontColor)),
                //               ),
                //               items: DataLists.listOfMonth,
                //               onChanged: (value) {}),
                //         )),
                //         Expanded(
                //           child: Padding(
                //             padding: const EdgeInsets.only(left: 4.0),
                //             child: CustomWidget.dropdownButton2(
                //                 context: context,
                //                 titleName: const Text('Year',
                //                     style: TextStyle(
                //                         color: CustomColors.textFontColor)),
                //                 items: DataLists.listOfYears,
                //                 onChanged: (value) {}),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.dropdownButton2(
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select your Religion';
                        }
                        return null;
                      },
                      context: context,
                      items: DataLists.religionItems,
                      titleName: 'My Religion',
                      onChanged: (value) {
                        religionSelected = value.toString();
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.dropdownButton2(
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select your Sect';
                        }
                        return null;
                      },
                      context: context,
                      items: DataLists.sect,
                      titleName: 'My Sect',
                      onChanged: (value) {
                        sectSelected = value.toString();
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.dropdownButton2(
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return '      Please select your Caste';
                        }
                        return null;
                      },
                      context: context,
                      items: DataLists.castItems,
                      titleName: 'My Caste',
                      onChanged: (value) {
                        casteSelected = value.toString();
                      }),
                ),
                GestureDetector(
                  onTap: () {
                    if (globalKey.currentState!.validate()) {
                      personalInfo.name = _firstNameController!.text.toString();
                      personalInfo.height = heightSelected.toString();
                      personalInfo.materialStatus = maritalStatusSelected.toString();
                      personalInfo.children = childrenStatusSelected.toString();
                      personalInfo.religion = religionSelected.toString();
                      personalInfo.section = sectSelected.toString();
                      personalInfo.caste = casteSelected.toString();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QualificationPage(),
                          ));
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
                      ],
                    ),
                  ),
                ),
              ],
            )),
      )),
    );
  }
}
