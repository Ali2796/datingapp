import 'package:badges/badges.dart';
import 'package:dating_app/screens/users_caht_section.dart';
import 'package:dating_app/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFFFD9DF),
      body: Center(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.95,
            child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                //padding: const EdgeInsets.all(5),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatScreen(
                                username: 'mahar',
                                uuid: const Uuid().v4().toString(),
                              ),
                            ),
                          );
                        },
                        child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: CustomColors.frameColor,
                                borderRadius: BorderRadius.circular(10)),
                            alignment: Alignment.center,
                            child: ListTile(
                              trailing: Badge(
                                  badgeColor: CustomColors.personIconColor,
                                  showBadge: true,
                                  badgeContent: const Text('5')),
                              leading: const CircleAvatar(
                                backgroundColor: CustomColors.frameColor,
                                radius: 50,
                                child: Icon(
                                  Icons.perm_identity,
                                  size: 50,
                                  color: CustomColors.personIconColor,
                                ),
                              ),
                              title: Text('Name of Member',    style:GoogleFonts.tinos(textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16
                              ), ),),
                              subtitle: Text('Hi,this is a dummy message',    style:GoogleFonts.tinos(textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16
                              ), ),),
                            )),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
// Container(
// height: 150,
// decoration: BoxDecoration(
// color: CustomColors.frameColor,
// borderRadius: BorderRadius.circular(20)),
// alignment: Alignment.bottomCenter,
// child: Stack(
// children: [
// const Align(
// alignment: Alignment.bottomCenter,
// child: Icon(
// Icons.person,
// color: CustomColors.personIconColor,
//
// size: 145,
// ),
// ),
// Padding(
// padding: const EdgeInsets.all(16.0),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Row(
// children: [
// const Text(
// 'Name',
// style: TextStyle(
// fontSize: 18,
// color: Colors.white,
// fontWeight: FontWeight.bold),
// ),
// Padding(
// padding: const EdgeInsets.all(4.0),
// child: Container(
// width: 6,
// height: 6,
// decoration: BoxDecoration(
// color: Colors.white60,
// borderRadius:
// BorderRadius.circular(50)),
// ),
// ),
// const Text('age',
// style: TextStyle(
// fontSize: 17,
// color: Colors.white,
// fontWeight: FontWeight.bold))
// ],
// ),
// Row(
// children: [
// Padding(
// padding: const EdgeInsets.all(4.0),
// child: Container(
// width: 12,
// height: 12,
// decoration: BoxDecoration(
// color: Colors.green,
// borderRadius:
// BorderRadius.circular(50)),
// ),
// ),
// const Text('City',
// style: TextStyle(
// fontSize: 15,
// color: Colors.white,
// fontWeight: FontWeight.bold)),
// ],
// )
// ],
// ),
// )
// ],
// )),
