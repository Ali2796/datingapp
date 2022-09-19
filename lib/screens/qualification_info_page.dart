import 'package:dating_app/model_classes/model_qualification_activities_info.dart';
import 'package:dating_app/screens/user_personal_activities.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:dating_app/utils/data_lists.dart';
import 'package:dating_app/utils/validation.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QualificationPage extends StatefulWidget {
  const QualificationPage({Key? key}) : super(key: key);

  @override
  State<QualificationPage> createState() => _QualificationPageState();
}

class _QualificationPageState extends State<QualificationPage> {
  late TextEditingController _jobController;
  ModelQualificationAndActivities qualificationAndActivities = ModelQualificationAndActivities();
  var globalKey = GlobalKey<FormState>();
  String? qualificationSelected;
  String? occupationSelected;
  String? incomeSelected;

  @override
  void initState() {
    super.initState();

    _jobController = TextEditingController();
  }

  @override
  void dispose() {
    _jobController.dispose();

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
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'A few more details\nabout you...',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.tinos(
                        textStyle: Theme.of(context).textTheme.headline4,
                        color: CustomColors.headingTextFontColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: CustomWidget.dropdownButton2(
                    context: context,
                    items: DataLists.qualificationList,
                    titleName: 'My Qualification',
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return '      Please select your Qualification';
                      }
                      return null;
                    },
                    onChanged: (value) {
                     qualificationSelected = value.toString();
                    },
                  ),
                ),
                // const Align(
                //     alignment: Alignment.centerLeft,
                //     child: Text(
                //       'Occupation Sector*',
                //       style: TextStyle(color: CustomColors.textFontColor),
                //     )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: CustomWidget.dropdownButton2(
                    context: context,
                    titleName: 'Occupation Sector',
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return '      Please select your Occupation Sector';
                      }
                      return null;
                    },
                    items: DataLists.occupationSector,
                    onChanged: (value) {
                      occupationSelected = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: CustomWidget.customTextField3(
                      titleName: 'Job Title',
                      controller: _jobController,
                      context: context,
                      validate: (value) =>
                          ModelValidation.commonValidation(value.toString())


                      ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 16.0),
                //   child: CustomWidget.customTextField(
                //     titleName: 'Your annual Income',
                //     // controller: _organizationController
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CustomWidget.dropdownButton2(
                    context: context,
                    items: DataLists.annualIncome,
                    titleName: 'Annual Income',
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return '      Please select your Annual Income';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      incomeSelected = value.toString();
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (globalKey.currentState!.validate()) {
                      qualificationAndActivities.qualification = qualificationSelected.toString();
                      qualificationAndActivities.occupationSector = occupationSelected.toString();
                      qualificationAndActivities.jobTitle = _jobController.text.toString();
                      qualificationAndActivities.annualIncome = incomeSelected.toString();

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const UserPersonalActivities(),
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
              ],
            ),
          ),
        )),
      ),
    );
  }
}
