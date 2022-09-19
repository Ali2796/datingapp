import 'package:dating_app/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalUserViewPage extends StatefulWidget {
  const TotalUserViewPage({Key? key}) : super(key: key);

  @override
  State<TotalUserViewPage> createState() => _TotalUserViewPageState();
}

class _TotalUserViewPageState extends State<TotalUserViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.9,
            child: GridView.builder(
                itemCount: 100,
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    mainAxisExtent: 250,
                    crossAxisCount: 2),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color:CustomColors.frameColor
                            .withOpacity(0.7)
                            .withAlpha(50),
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
                                        fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16
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
                    ))),
          ),
        ),
      ),
    );
  }
}
