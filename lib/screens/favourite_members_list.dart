import 'package:dating_app/screens/users_caht_section.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

class FavouriteMembers extends StatefulWidget {
  const FavouriteMembers({Key? key}) : super(key: key);

  @override
  State<FavouriteMembers> createState() => _FavouriteMembersState();
}

class _FavouriteMembersState extends State<FavouriteMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: ListView.builder(
                itemCount: 50,
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(onTap: () {
                        // Navigator.push(
                        //     context, MaterialPageRoute(builder: (context)
                        // =>
                        // ChatScreen(
                        //   username: 'mahar',
                        //   uuid: const Uuid().v4().toString(),
                        // ),),);
                      },
                        child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                                color:CustomColors.frameColor,
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.bottomCenter,
                            child: Stack(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Icon(
                                    Icons.person,
                                    color: CustomColors.personIconColor,
                                    size: 145,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                           Text(
                                            'Name',
                                            style:GoogleFonts.tinos(textStyle: const TextStyle(
                                                fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20
                                            ), ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              width: 6,
                                              height: 6,
                                              decoration: BoxDecoration(
                                                  color: Colors.white60,
                                                  borderRadius:
                                                  BorderRadius.circular(50)),
                                            ),
                                          ),
                                           Text('age',
                                            style:GoogleFonts.tinos(textStyle: const TextStyle(
                                                fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18
                                            ), ),)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Container(
                                              width: 12,
                                              height: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                  BorderRadius.circular(50)),
                                            ),
                                          ),
                                           Text('City',
                                            style:GoogleFonts.tinos(textStyle: const TextStyle(
                                                fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16
                                            ), ),),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
