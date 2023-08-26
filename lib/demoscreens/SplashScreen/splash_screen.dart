import 'dart:async';
import 'package:ecommerce/utils/colors/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce/demoscreens/widgets/screens/landing_page.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  static const routeName = '/splash-screen';
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LandingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 5000,
        splashIconSize: 200,
        splash: Image(
            image: AssetImage(
          "assets/LogoAccents.png",
        )),
        nextScreen: LandingPage(),
        // splashTransition: SplashTransition.sizeTransition,
        pageTransitionType: PageTransitionType.rightToLeftJoined,
        backgroundColor: whiteColor);
  }
}
