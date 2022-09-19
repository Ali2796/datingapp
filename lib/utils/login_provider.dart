import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginProviders{
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // get user => _auth.currentUser;

  static Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
    await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,

    );
    print('${credential}');


    // Once signed in, return the UserCredential
    var userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    print(userCredential.user!.displayName);
    return userCredential;
  }
  //////////////////////////
 static Future<String> signUpWithEmail({required String emailAddress,required String password,})async{
    try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  email: emailAddress,
  password: password,
  );
  return 'signUp';
  } on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
  print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
  print('The account already exists for that email.');
  }
  return 'please check your connection';
  } catch (e) {
      print(e);
    return 'SomeThing wentWrong';
  }
  }
  ///////////////////////////
  static Future<String> userLoginWithEmail({required String userName,required String password}) async {

    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email:userName ,
          password:password);
      return 'login';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'user-not-found';
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return 'wrong-password';
        print('Wrong password provided for that user.');
      }
      return 'SomeThing wentWrong';
    }
  }
}