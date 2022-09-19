import 'package:dash_chat/dash_chat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import '../utils/custom_color.dart';

// class UsersChatSection extends StatefulWidget {
//   const UsersChatSection({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<UsersChatSection> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _editingController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dash Chat"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 controller: _editingController,
//                 decoration:
//                 const InputDecoration(hintText: "Enter Name here..."),
//                 validator: (val) {
//                   if (val!.length < 3) {
//                     return "Name to short";
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(
//                 height: 40.0,
//               ),
//               ElevatedButton(
//                 child: const Text("Next"),
//                 onPressed: () async {
//                   if (_formKey.currentState!.validate()) {
//                     print(_editingController.value.text);
//                     try {
//                      // await FirebaseAuth.instance.signInAnonymously();
//
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) => ChatScreen(
//                             username: _editingController.text,
//                             uuid: Uuid().v4().toString(),
//                           ),
//                         ),
//                       );
//                     } catch (e) {
//                       print(e);
//                     }
//                   }
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class ChatScreen extends StatefulWidget {
  final String? username;
  final String? uuid;

  ChatScreen({this.username, this.uuid});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ChatUser user = ChatUser();
  List<ChatMessage> messageList = [];

  void uploadFile() async {
    PickedFile? result = (await ImagePicker.platform.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
      maxHeight: 400,
      maxWidth: 400,
    ));

    if (result != null) {
      String id = const Uuid().v4().toString();

      // final storageRef =
      //FirebaseStorage.instance.ref().child("chat_images/$id.jpg");

      // UploadTask uploadTask = storageRef.putFile(
      //   result,
      //   SettableMetadata(
      //     contentType: 'image/jpg',
      //   ),
      // );
      // TaskSnapshot download = await uploadTask.onComplete;

      // String url = await download.ref.getDownloadURL();

      ChatMessage message = ChatMessage(
        text: "",
        user: user,
      );
      //
      // var documentReference = FirebaseFirestore.instance
      //     .collection('messages')
      //     .doc(DateTime.now().millisecondsSinceEpoch.toString());
      //
      // FirebaseFirestore.instance.runTransaction((transaction) async {
      //   transaction.set(
      //     documentReference,
      //     message.toJson(),
      //   );
      // });
    }
  }

  @override
  void initState() {
    user.name = widget.username;
    user.uid = widget.uuid;
    super.initState();
  }

  void onSend(ChatMessage message) {
    // //  var documentReference = FirebaseFirestore.instance
    //       .collection('messages')
    //       .doc(DateTime.now().millisecondsSinceEpoch.toString());
    //   print(
    //       '${DateTime.now().millisecondsSinceEpoch.toString()}////////////////////////////');
    //   FirebaseFirestore.instance.runTransaction((transaction) async {
    //     transaction.set(
    //       documentReference,
    //       message.toJson(),
    //     );
    //  });
    messageList.add(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        toolbarHeight: 100,
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.menu_rounded))],
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () {
        //   Navigator.pop(context);
        // },),
        iconTheme: Theme.of(context).iconTheme.copyWith(),
        title:  ListTile(
          leading: const CircleAvatar(
            backgroundColor: CustomColors.frameColor,
            radius: 50,
            child: Icon(
              Icons.perm_identity,
              size: 50,
              color: CustomColors.personIconColor,
            ),
          ),
          title: Text(
            'Name',
            style:GoogleFonts.tinos(textStyle: const TextStyle(
                fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18
            ), ),
          ),
        ),
      ),
      body: DashChat(
        scrollToBottom: true,
        inputMaxLines: 5,
        inputContainerStyle: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color: Colors.grey,
            )),
        user: user,
        messages: messageList,
        inputDecoration: const InputDecoration(
          hintText: "Message here...",
          border: InputBorder.none,
        ),
        onSend: onSend,
        trailing: <Widget>[
          IconButton(
            icon: const Icon(Icons.photo),
            onPressed: uploadFile,
          )
        ],
      ),

      //////////////////////////////////////////////////
      // StreamBuilder<QuerySnapshot>(
      //   stream: FirebaseFirestore.instance.collection('messages').snapshots(),
      //   builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //     if (!snapshot.hasData) {
      //       return const Center(
      //         child: Text('No data'),
      //       );
      //     } else {
      //       var messages = snapshot.data!.docs
      //           .map((documentSnapshot) => ChatMessage.fromJson(
      //           documentSnapshot.data() as Map<dynamic, dynamic>))
      //           .toList();
      //       return DashChat(
      //         scrollToBottom: true,
      //         inputMaxLines: 5,
      //         inputContainerStyle: BoxDecoration(
      //             color: Colors.white70,
      //             borderRadius: BorderRadius.circular(20),
      //             border: Border.all(
      //               width: 1,
      //               color: Colors.grey,
      //             )),
      //         user: user,
      //         messages: messages,
      //         inputDecoration: const InputDecoration(
      //           hintText: "Message here...",
      //           border: InputBorder.none,
      //         ),
      //         onSend: onSend,
      //         trailing: <Widget>[
      //           IconButton(
      //             icon: const Icon(Icons.photo),
      //             onPressed: uploadFile,
      //           )
      //         ],
      //       );
      //     }
      //   },
      // ),
    );
  }
}
