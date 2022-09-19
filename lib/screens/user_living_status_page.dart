import 'package:dating_app/model_classes/model_personal_info.dart';
import 'package:dating_app/screens/personal_information_page.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:dating_app/utils/data_lists.dart';
import 'package:dating_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserLivingPage extends StatefulWidget {
  const UserLivingPage({Key? key}) : super(key: key);

  @override
  State<UserLivingPage> createState() => _UserLivingPageState();
}

class _UserLivingPageState extends State<UserLivingPage> {
  ModelPersonalInfo personalInfo= ModelPersonalInfo();
  String? _provinceSelected;
  String? _citySelected;
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
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.9,
          child: Form(key: globalKey,
            child: Column(

              children: [
            Align(alignment: Alignment.topLeft,
              child: Text("Where do you live?\nI'm from…",style: GoogleFonts.tinos(
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline4,
                  color: CustomColors.headingTextFontColor,
                  fontWeight: FontWeight.bold),),
            ),
                const SizedBox(height: 150,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: CustomWidget.dropdownButton2(
                    onChanged: (value){
                      _provinceSelected = value;

                    },
                      items: DataLists.provinceList,
                      context: context,
                      titleName:
                        'Province',
                    validate: (value){

                        if (value == null || value.isEmpty) {
                          return '      Please select your province';
                        }
                        return null;
                      },


                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0,top:16),
                  child: CustomWidget.dropdownButton2(
                      onChanged: (value){
                      _citySelected = value;
                      },
                      items: DataLists.cities,
                      context: context,
                      titleName:
                        'City',
                    validate: (value){

                      if (value == null || value.isEmpty) {
                        return '      Please select your city';
                      }
                      return null;
                    },
                  ),),

                GestureDetector(
                  onTap: () {
                    if(globalKey.currentState!.validate()){
                      personalInfo.province = _provinceSelected.toString();
                      personalInfo.city = _citySelected.toString();


                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const PersonalInformationPage(),
                        ));
                    } },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
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
                            child:  Text(
                              'Continue',
                                style:CustomColors.buttonTextStyle(context)
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
