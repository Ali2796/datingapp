
import 'package:dating_app/screens/all_users_page.dart';

import 'package:dating_app/screens/terms&conditations.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddImages extends StatefulWidget {
  const AddImages({Key? key}) : super(key: key);

  @override
  State<AddImages> createState() => _AddImagesState();
}

class _AddImagesState extends State<AddImages> {
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
            width: MediaQuery
                .of(context)
                .size
                .width * 0.9,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.9,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Let's add a photo...",
                    style: GoogleFonts.tinos(
                        textStyle: Theme
                            .of(context)
                            .textTheme
                            .headline4,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height:80,),
                Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TotalUserViewPage(),
                            ));
                      },
                      child: Card(
                        elevation: 5,
                        child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                                color: CustomColors.backGroundColor,
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  CupertinoIcons.camera_on_rectangle_fill,
                                  color: CustomColors.personIconColor,
                                  size: 150,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const TermsAndConditation();
                                      },
                                    ));
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 50,
                                      width:
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .width *
                                          0.4,
                                      decoration: BoxDecoration(
                                          color: CustomColors
                                              .buttonBackgroundColor,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                         ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceEvenly,
                                        children: [
                                          const Icon(
                                              Icons.cloud_download_outlined,color: Colors.white,),
                                          Text(
                                            'Add Photo',
                                            style:CustomColors.buttonTextStyle(context)
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            )),
                      ),
                    )
                  // GridView.builder(
                  //     itemCount: 1,
                  //     shrinkWrap: true,
                  //     padding: const EdgeInsets.all(5),
                  //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisSpacing: 7,
                  //         mainAxisSpacing: 7,
                  //         mainAxisExtent: 200,
                  //         crossAxisCount: 2),
                  //     physics: const NeverScrollableScrollPhysics(),
                  //     itemBuilder: (context, index) {
                  //       return GestureDetector(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                 builder: (context) => const TotalUserViewPage(),
                  //               ));
                  //         },
                  //         child: Container(
                  //             decoration: BoxDecoration(
                  //                 color: CustomColors.frameColor,
                  //                 borderRadius: BorderRadius.circular(20)),
                  //             alignment: Alignment.bottomCenter,
                  //             child: Stack(
                  //               children: const [
                  //                 Align(
                  //                     alignment: Alignment.bottomCenter,
                  //                     child: Padding(
                  //                       padding: EdgeInsets.only(bottom: 16.0),
                  //                       child: Text(
                  //                         'Tap to add Image',
                  //                         style: TextStyle(
                  //                             fontWeight: FontWeight.bold,
                  //                             color: CustomColors.personIconColor),
                  //                       ),
                  //                     )),
                  //                 Align(
                  //                   alignment: Alignment.center,
                  //                   child: Icon(
                  //                     CupertinoIcons.camera_on_rectangle_fill,
                  //                     color: CustomColors.personIconColor,
                  //                     size: 100,
                  //                   ),
                  //                 ),
                  //               ],
                  //             )),
                  //       );
                  //     }),
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const TermsAndConditation();
                      },
                    ));
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.5,
                      decoration: BoxDecoration(
                          color: CustomColors.buttonBackgroundColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      child: Text(
                        'Done',
                        style: CustomColors.buttonTextStyle(context)
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
