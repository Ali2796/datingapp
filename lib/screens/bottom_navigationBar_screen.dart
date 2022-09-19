import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:dating_app/screens/explore_users_page.dart';
import 'package:dating_app/screens/favourite_members_list.dart';
import 'package:dating_app/screens/favourite_users_tab_page.dart';
import 'package:dating_app/screens/inbox_page.dart';
import 'package:dating_app/screens/profile_page.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarForDating extends StatefulWidget {
  int currentIndex = 0;

  BottomNavigationBarForDating({Key? key, currentIndex})
      : super(
          key: key,
        );

  @override
  _BottomNavigationBarForDatingState createState() =>
      _BottomNavigationBarForDatingState();
}

class _BottomNavigationBarForDatingState
    extends State<BottomNavigationBarForDating> {
  //int _currentIndex = widget.currentIndex!;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    print('${widget.currentIndex}///////////cureent index is ');
    pageController = PageController(initialPage: widget.currentIndex);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('${widget.currentIndex}///////////cureent index is ');
    return Scaffold(
      extendBody: true,
      backgroundColor: CustomColors.backGroundColor,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          ExplorePage(),
          FavouriteUsersTab(),
          InboxPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: _buildTitle(),
    );
  }

  Widget _buildTitle() {
    return CustomNavigationBar(
      scaleFactor: 0.2,
      iconSize: 30.0,
      elevation: 0,
      selectedColor: Colors.green,
      strokeColor: CustomColors.frameColor,
      unSelectedColor: Colors.white,
      backgroundColor: const Color(0xFF9D0A0E),
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.explore),
          title: Text("Explore",
              style: CustomColors.normalTextStyleWithWhiteColor(context)),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.favorite),
          title: Text("Favourite",
              style: CustomColors.normalTextStyleWithWhiteColor(context)),
        ),
        CustomNavigationBarItem(
          icon: const Icon(CupertinoIcons.chat_bubble_text_fill),
          title: Text("Chat Now",
              style: CustomColors.normalTextStyleWithWhiteColor(context)),
        ),
        CustomNavigationBarItem(
          icon: const Icon(
            Icons.account_circle,
          ),
          title: Text("My Account",
              style: CustomColors.normalTextStyleWithWhiteColor(context)),
        ),
      ],
      currentIndex: widget.currentIndex,
      onTap: (index) {
        setState(() {
          widget.currentIndex = index;
        });
        pageController.animateToPage(widget.currentIndex,
            duration: const Duration(milliseconds: 800),
            curve: Curves.bounceOut);
      },
    );
  }
}
