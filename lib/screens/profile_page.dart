import 'package:dating_app/utils/custom_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backGroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.backGroundColor,
        elevation: 0,
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: CustomColors.iconsColor,
            ),
        centerTitle: true,
        title: const SizedBox(
          height: 100,
        ),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 8),
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  size: 120,
                  color: CustomColors.personIconColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Name',
                style: GoogleFonts.tinos(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
            ),
            ListTile(
                contentPadding: const EdgeInsets.only(left: 24.0, right: 24),
                title: Text('Edit Profile',
                    style: CustomColors.normalTextStyleWithBlackColor(context)),
                trailing: const Icon(
                  CupertinoIcons.rectangle_paperclip,
                  color: CustomColors.iconsColor,
                )),
            ListTile(
                contentPadding: const EdgeInsets.only(left: 24.0, right: 24),
                title: Text('Settings',
                    style: CustomColors.normalTextStyleWithBlackColor(context)),
                trailing: const Icon(
                  Icons.settings,
                  color: CustomColors.iconsColor,
                )),
            ListTile(
                contentPadding: const EdgeInsets.only(left: 24.0, right: 24),
                title: Text('Help Center',
                    style: CustomColors.normalTextStyleWithBlackColor(context)),
                trailing: const Icon(
                  Icons.help,
                  color: CustomColors.iconsColor,
                )),
            ListTile(
                contentPadding: const EdgeInsets.only(left: 24.0, right: 24),
                title: Text('Contact Support',
                    style: CustomColors.normalTextStyleWithBlackColor(context)),
                trailing: const Icon(
                  Icons.support,
                  color: CustomColors.iconsColor,
                )),
            InkWell(onTap: (){
              googleSignIn.disconnect().whenComplete(() async{
                await FirebaseAuth.instance.signOut();
              });
            },
              child: ListTile(
                  contentPadding: const EdgeInsets.only(left: 24.0, right: 24),
                  title: Text('Log Out',
                      style: CustomColors.normalTextStyleWithBlackColor(context)),
                  trailing: const Icon(
                    Icons.logout,
                    color: CustomColors.iconsColor,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
