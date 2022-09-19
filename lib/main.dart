import 'package:dating_app/screens/profile_details.dart';
import 'package:dating_app/screens/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(Builder(builder: (context) {
    return MaterialApp(
      home: const ProfileDetails(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: Colors.black54,
        ),
        textTheme: GoogleFonts.tinosTextTheme(
          Theme.of(context).textTheme.copyWith(
              bodyText2: const TextStyle(color: Colors.black54),
              bodyText1: const TextStyle(
                color: Colors.black54,
              )),
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const SignUpPage(),
      backgroundColor: Colors.white,
      speed: 2,
      pageRouteTransition: PageRouteTransition.Normal,
      duration: 4000,
      imageSize: 300,
      imageSrc: 'assets/images/splash_logo.png',
    );
  }
}
