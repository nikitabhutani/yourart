import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yourart/src/screens/signin.dart';
import 'package:yourart/src/screens/welcomescreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color.fromRGBO(251, 238, 230, 1),
      centered: true,
      splash: 'assets/images/app_logo.png',
      splashIconSize: 400,
      nextScreen:  WelcomeScreen(),
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}