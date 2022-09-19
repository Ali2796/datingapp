import 'package:dating_app/model_classes/model_personal_info.dart';
import 'package:dating_app/screens/user_living_status_page.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:dating_app/utils/data_lists.dart';
import 'package:dating_app/utils/validation.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserAgePage extends StatefulWidget {
  const UserAgePage({Key? key}) : super(key: key);

  @override
  State<UserAgePage> createState() => _UserAgePageState();
}

class _UserAgePageState extends State<UserAgePage> {

  TextEditingController ageController = TextEditingController();
  ModelPersonalInfo personalInfo= ModelPersonalInfo();
  var globalKey = GlobalKey<FormState>();

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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Form(
              key: globalKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('What is your age?',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.tinos(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.headingTextFontColor,
                      )),
                  const SizedBox(
                    height: 150,
                  ),
                  CustomWidget.customTextField3(
                    textInputType: TextInputType.number,
                    controller: ageController,
                    validate: (value)=> ModelValidation.commonValidation(value!),
                    context: context,
                    titleName: "I'm",
                  ),
                  const SizedBox(
                    height: 35,
                  ),

                  GestureDetector(
                    onTap: () {
                      if(globalKey.currentState!.validate()){

                        personalInfo.age = int.parse(ageController.text.toString());


                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserLivingPage(),
                            ));
                      }},
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

                  // MultiSelectFormField(
                  //   //autovalidate: AutovalidateMode.disabled,
                  //   chipBackGroundColor: Colors.blue,
                  //   chipLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  //   dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  //   checkBoxActiveColor: Colors.blue,
                  //   checkBoxCheckColor: Colors.white,
                  //   dialogShapeBorder: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  //   title: Text(
                  //     "My workouts",
                  //     style: TextStyle(fontSize: 16),
                  //   ),
                  //   validator: (value) {
                  //     if (value == null || value.length == 0) {
                  //       return 'Please select one or more options';
                  //     }
                  //     return null;
                  //   },
                  //   dataSource: [
                  //     {
                  //       "display": "Running",
                  //       "value": "Running",
                  //     },
                  //     {
                  //       "display": "Climbing",
                  //       "value": "Climbing",
                  //     },
                  //     {
                  //       "display": "Walking",
                  //       "value": "Walking",
                  //     },
                  //     {
                  //       "display": "Swimming",
                  //       "value": "Swimming",
                  //     },
                  //     {
                  //       "display": "Soccer Practice",
                  //       "value": "Soccer Practice",
                  //     },
                  //     {
                  //       "display": "Baseball Practice",
                  //       "value": "Baseball Practice",
                  //     },
                  //     {
                  //       "display": "Football Practice",
                  //       "value": "Football Practice",
                  //     },
                  //   ],
                  //   textField: 'display',
                  //   valueField: 'value',
                  //   okButtonLabel: 'OK',
                  //   cancelButtonLabel: 'CANCEL',
                  //   hintWidget: Text('Please choose one or more'),
                  //   initialValue: _myActivities,
                  //   onSaved: (value) {
                  //     if (value == null) return;
                  //     setState(() {
                  //       _myActivities = value;
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
