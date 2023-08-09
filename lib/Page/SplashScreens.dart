import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dw/Page/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 6,
      backgroundColor: Colors.black,
      splash: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/splash.jpg'),
        radius: 300,
      ),
      nextScreen: HomePage(),
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      splashIconSize: 500,
    );
  }
}
