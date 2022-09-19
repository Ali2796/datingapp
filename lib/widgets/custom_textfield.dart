import 'package:dating_app/utils/custom_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:multiselect/multiselect.dart';

import 'package:outline_gradient_button/outline_gradient_button.dart';

class CustomWidget {
  // static Widget customTextField(
  //     {TextEditingController? controller,
  //     required String titleName,
  //     String? initialValue,
  //     bool obscureText = false,
  //     FormFieldValidator<String>? validate,
  //     TextInputType textInputType = TextInputType.text,
  //     int? maxLength,
  //     List<TextInputFormatter>? inputFormatters,
  //     String? prefixText}) {
  //   return Container(
  //     height: 50,
  //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
  //     child: TextFormField(
  //       controller: controller,
  //       initialValue: initialValue,
  //       inputFormatters: inputFormatters,
  //       validator: validate,
  //       obscureText: obscureText,
  //       keyboardType: textInputType,
  //       maxLength: maxLength,
  //       cursorColor: Colors.black,
  //       style: const TextStyle(
  //         color: CustomColors.textFontColor,
  //       ),
  //       decoration: InputDecoration(
  //           filled: true,
  //           fillColor: Colors.black12,
  //           prefixText: prefixText,
  //           hintText: titleName,
  //           // label: Text(
  //           //   titleName,
  //           //   style: const TextStyle(
  //           //       color: CustomColors.textFontColor, fontSize: 13),
  //           // ),
  //           labelStyle: const TextStyle(color: CustomColors.textFontColor),
  //           // enabledBorder: OutlineInputBorder(
  //           //   borderSide: const BorderSide(
  //           //       color: CustomColors.outLineBorderColor, width: 1),
  //           //   borderRadius: BorderRadius.circular(10),
  //           // ),
  //           // focusedBorder: OutlineInputBorder(
  //           //     borderRadius: BorderRadius.circular(10),
  //           //     borderSide: const BorderSide(color: Colors.transparent, width: 1)),
  //           border: UnderlineInputBorder(
  //             // borderSide: const BorderSide(
  //             //     color: Colors.transparent, width: 0),
  //             borderRadius: BorderRadius.circular(10),
  //           )),
  //     ),
  //   );
  // }

  static Widget dropdownButton2({
    required List items,
    double? dropDownMaxHeight,
    required BuildContext context,
    void Function(String?)? onChanged,
    void Function(String?)? onSaved,
    required String titleName,
    FormFieldValidator<String>? validate,
  }) {
    return Container(
      height: 50,
      alignment: Alignment.center,
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
      child: DropdownButtonFormField2(
          decoration: const InputDecoration(
            //isDense: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            border:InputBorder.none,
          ),
          isExpanded: true,
          icon: const Icon(Icons.arrow_drop_down,
              color: CustomColors.iconsColor),
          iconSize: 25,
          buttonHeight: 50,
          hint: Text(titleName,
              style: GoogleFonts.tinos(
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  color: CustomColors.textFontColor,
                  fontSize: 14)),
          style: GoogleFonts.tinos(
              textStyle: Theme.of(context).textTheme.bodyText1,
              color: CustomColors.textFontColor,
              fontSize: 14),
          scrollbarAlwaysShow: true,
          scrollbarRadius: const Radius.circular(50),
          scrollbarThickness: 10,
          buttonPadding: const EdgeInsets.only(left: 20, right: 10),
          dropdownMaxHeight: 300,
          dropdownOverButton: false,
          dropdownDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: GoogleFonts.tinos(
                          textStyle: Theme.of(context).textTheme.bodyText1,
                          color: CustomColors.textFontColor,
                          fontSize: 14),
                    ),
                  ))
              .toList(),
          validator: validate,
          onChanged: onChanged,
          onSaved: onSaved),
    );
  }

  // static Widget dropdownButton1({
  //   required List items,
  //   required void Function(List) onChanged,
  //   void Function(List?)? onSaved,
  //   required String titleName,
  //   FormFieldValidator<List>? validate,
  // }) {
  //   return Card(
  //     elevation: 5,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(50),
  //     ),
  //     child: Container(
  //       height: 50,
  //       alignment: Alignment.center,
  //       decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.circular(50),
  //           boxShadow: [
  //             BoxShadow(
  //               color: Colors.black.withOpacity(0.09),
  //               offset: const Offset(
  //                 0.1,
  //                 1.5,
  //               ),
  //               spreadRadius: 1,
  //             ),
  //             BoxShadow(
  //               color: Colors.black.withOpacity(0.09),
  //               offset: const Offset(
  //                 -0.1,
  //                 -0.001,
  //               ),
  //               spreadRadius: -1,
  //             ),
  //           ]),
  //       child: GFMultiSelect(
  //         items: ['items1','item2','item3'],
  //         onSelect: onChanged,
  //         size: 20,
  //         dropdownBgColor: Colors.grey,
  //         dropdownTitleTileText: 'Sports',
  //         hideDropdownUnderline: true,
  //         dropdownTitleTileColor: Colors.white,
  //         dropdownTitleTileMargin:
  //             const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 0),
  //         //dropdownTitleTilePadding: EdgeInsets.all(10),
  //         // dropdownUnderlineBorder:
  //         //     const BorderSide(color: Colors.transparent, width: 0),
  //         // dropdownTitleTileBorder:
  //         // Border.all(color: Colors.grey, width: 1),
  //         dropdownTitleTileBorderRadius: BorderRadius.circular(50),
  //         expandedIcon: const Icon(
  //           Icons.keyboard_arrow_down,
  //           color: Colors.black54,
  //         ),
  //         collapsedIcon: const Icon(
  //           Icons.keyboard_arrow_up,
  //           color: Colors.black54,
  //         ),
  //         submitButton: const Text('OK'),
  //         dropdownTitleTileTextStyle:
  //             const TextStyle(fontSize: 14, color: Colors.black54),
  //         // padding: const EdgeInsets.all(10),
  //         // margin: const EdgeInsets.all(10),
  //         type: GFCheckboxType.circle,selected: true,
  //         activeBgColor: Colors.green.withOpacity(0.5),
  //         inactiveBorderColor: Colors.grey,
  //       ),
  //     ),
  //   );
  // }

  static Widget dropdownButton3({
    required List<String> items,
    double? dropDownMaxHeight,
    required void Function(List<String>) onChanged,
    required List<String> selectedValues,
    required String titleName,
    FormFieldValidator? validate,
  }) {
    return Container(
      height: 50,
      alignment: Alignment.center,
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
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: DropDownMultiSelect(
          isDense: true,
          decoration: const InputDecoration(
            //isDense: true,
            fillColor: Colors.white,
            border: InputBorder.none,
          ),
          onChanged: onChanged,
          options: items,
          selectedValues: selectedValues,
          whenEmpty: titleName,
        ),
      ),
    );
  }

  // static Widget dropdownButton4({
  //   required List<String> items,
  //   TextEditingController? controller,
  //   required BuildContext context,
  //   String? titleName,
  //   FormFieldValidator<dynamic>? validate,
  //   required void Function(dynamic)? onChanged,
  //   List<String>? selectedValues,
  // }) {
  //   return Card(
  //     elevation: 5,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(50),
  //     ),
  //     child: TextFormField(
  //       controller: controller,
  //       validator: validate,
  //       cursorColor: Colors.black,
  //       style: GoogleFonts.tinos(
  //           textStyle: Theme.of(context).textTheme.bodyText1,
  //           color: CustomColors.textFontColor,
  //           fontSize: 14),
  //       decoration: InputDecoration(
  //         suffix: Padding(
  //           padding: const EdgeInsets.only(right: 20.0),
  //           child: DropdownButton(
  //             underline: const SizedBox(),
  //             iconSize: 30,
  //             items: items.map((item) {
  //               Map<String, bool> values = {};
  //               values[item] = false;
  //               return DropdownMenuItem<String>(
  //                   value: item,
  //                   child: CheckboxListTile(
  //                     title: Text(
  //                       item,
  //                       style: GoogleFonts.tinos(
  //                           textStyle: Theme.of(context).textTheme.bodyText1,
  //                           color: CustomColors.textFontColor,
  //                           fontSize: 14),
  //                     ),
  //                     value: values[item],
  //                     onChanged: (bool? value) {
  //                       // setState(() {
  //                       //   values[key] = value;
  //                       // });
  //                     },
  //                   ));
  //             }).toList(),
  //             onChanged: onChanged,
  //           ),
  //         ),
  //         hintText: titleName,
  //         hintStyle: GoogleFonts.tinos(
  //             textStyle: Theme.of(context).textTheme.bodyText1,
  //             color: CustomColors.textFontColor,
  //             fontSize: 14),
  //         fillColor: Colors.white70,
  //         border: InputBorder.none,
  //         contentPadding: const EdgeInsets.only(left: 20),
  //       ),
  //     ),
  //   );
  // }

  static Widget customTextField3(
      {TextEditingController? controller,
      String? initialValue,
      required BuildContext context,
      bool obscureText = false,
      String? titleName,
      Widget? suffix,
      FormFieldValidator<String>? validate,
      TextInputType textInputType = TextInputType.text,
      int? maxLength,
      List<TextInputFormatter>? inputFormatters,
      String? prefixText}) {
    return Container(
      height: 50,
      alignment: Alignment.center,
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
              spreadRadius: 1,
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
      child: TextFormField(
        controller: controller,
        inputFormatters: inputFormatters,
        validator: validate,
        keyboardType: textInputType,
        maxLength: maxLength,
        obscureText: obscureText,
        cursorColor: Colors.black,

       // maxLines: 1,
        style: GoogleFonts.tinos(
            textStyle: Theme.of(context).textTheme.bodyText1,
            color: CustomColors.textFontColor,
            fontSize: 14),
        decoration: InputDecoration(
          prefixText: prefixText,

          suffix: suffix,
          hintText: titleName,
          hintStyle: GoogleFonts.tinos(
              textStyle: Theme.of(context).textTheme.bodyText1,
              color: CustomColors.textFontColor,
              fontSize: 14),
          fillColor: Colors.white70,
          border:  InputBorder.none,
         // errorBorder:  OutlineInputBorder(borderRadius:BorderRadius.circular(50),borderSide: BorderSide(width: 1,color: Colors.red)),
          contentPadding: const EdgeInsets.only(left: 20),
        ),
      ),
    );
  }

  static Widget customContainer(
      {required Widget child,
      double height = double.infinity,
      double width = double.infinity,
      void Function()? onTap,
      bool borderEnabled = false}) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      child: SizedBox(
        height: height,
        width: width,
        child: OutlineGradientButton(
            strokeWidth: 2,
            onTap: onTap,
            radius: const Radius.circular(50),
            inkWell: true,
            elevation: 5,
            backgroundColor: Colors.white,
            gradient: borderEnabled
                ? LinearGradient(
                    colors: [Colors.orange, Colors.pink.shade200],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0, width * 0.5])
                : const LinearGradient(colors: [Colors.white, Colors.white70]),
            child: Center(child: child)),
      ),
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
              spreadRadius: 1,
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
    );
  }
}
