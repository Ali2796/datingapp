import 'package:dating_app/screens/all_users_page.dart';
import 'package:dating_app/screens/user_personal_activities.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Online Now',
                    style: GoogleFonts.tinos(
                        textStyle: Theme.of(context).textTheme.headline5,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Checkout some of the members that are online now and ready to chat',
                    style: GoogleFonts.tinos(color: Colors.black),
                  ),
                ),
                GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 200,
                            crossAxisCount: 2),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TotalUserViewPage(),
                              ));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: CustomColors.frameColor,
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.bottomCenter,
                            child: Stack(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Icon(
                                    Icons.person,
                                    color:
                                        CustomColors.personIconColor,
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
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
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
                                                      BorderRadius.circular(
                                                          50)),
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
                      );
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TotalUserViewPage(),
                              ));
                        },
                        child:  Text(
                          'See more',
                          style:GoogleFonts.tinos(textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16
                          ), ),
                        )),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TotalUserViewPage(),
                    ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Member',
                    style: GoogleFonts.tinos(
                        textStyle: Theme.of(context).textTheme.headline5,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(
                      'Checkout a latest member. How about a quick introduction?',
                      style: GoogleFonts.tinos(color: Colors.black),
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: CustomColors.frameColor,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.bottomCenter,
                      child: Stack(
                        children: [
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: Icon(
                              Icons.person,
                              color: CustomColors.personIconColor,
                              size: 300,
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
                                            color: Colors.white,
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
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Interesting Profiles',
                    style: GoogleFonts.tinos(
                        textStyle: Theme.of(context).textTheme.headline4,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Explore the interesting members who make an extra effort to find true love',
                    style: GoogleFonts.tinos(color: Colors.black),
                  ),
                ),
                GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(5),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 7,
                            mainAxisSpacing: 7,
                            mainAxisExtent: 200,
                            crossAxisCount: 2),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TotalUserViewPage(),
                              ));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: CustomColors.frameColor,
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.bottomCenter,
                            child: Stack(
                              children: [
                                const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Icon(
                                    Icons.person,
                                    color:CustomColors.personIconColor,
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
                                                fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18
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
                                                      BorderRadius.circular(
                                                          50)),
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
                                                      BorderRadius.circular(
                                                          50)),
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
                      );
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TotalUserViewPage(),
                              ));
                        },
                        child:  Text(
                          'See more',
                          style:GoogleFonts.tinos(textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16
                          ), ),
                        )),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserPersonalActivities(),
                    ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Complete your Profile',
                    style: GoogleFonts.tinos(
                        textStyle: Theme.of(context).textTheme.headline5,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color:CustomColors.frameColor,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.person,
                              size: 150,
                              color: CustomColors.personIconColor,
                            ),
                          ),
                          Text(
                            'The more you fill out your profile,the better \n matches we can find for you',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.tinos(

                                color: Colors.black),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Describe who you are',
                                style:GoogleFonts.tinos(textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,color: Colors.black
                                 ), ),

                              ))
                        ],
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
