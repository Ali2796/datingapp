import 'package:dating_app/screens/favourite_members_list.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteUsersTab extends StatefulWidget {
  const FavouriteUsersTab({Key? key}) : super(key: key);

  @override
  State<FavouriteUsersTab> createState() => _FavouriteUsersTabState();
}

class _FavouriteUsersTabState extends State<FavouriteUsersTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: CustomColors.backGroundColor,
            elevation: 0,
            iconTheme: Theme.of(context)
                .iconTheme
                .copyWith(color: const Color(0xFF8E1B16)),
            centerTitle: true,
            title:  Text(
              'Explore',
              style:GoogleFonts.tinos(textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20
              ), ),
            ),
            bottom: TabBar(
              indicatorColor: CustomColors.frameColor,
              indicatorWeight: 3,
              onTap: (index) {},
              tabs:  [
                Tab(
                    icon: Text(
                  'Liked',
                      style:GoogleFonts.tinos(textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20
                      ), ),
                )),
                Tab(
                    icon: Text('Favourite',
                      style:GoogleFonts.tinos(textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20
                      ), ),)),
                Tab(
                  icon: Text('Blocked',
                    style:GoogleFonts.tinos(textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20
                    ), ),),
                )
              ],
            ),
          ),
          body: const TabBarView(children: [
            FavouriteMembers(),
            FavouriteMembers(),
            FavouriteMembers()
          ]),
        ));
  }
}
