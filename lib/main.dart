import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:yourart/firebase_options.dart';
import 'package:yourart/src/repository/authentication_repository/authentication_repository.dart';
import 'package:yourart/src/screens/aboutus.dart';
import 'package:yourart/src/screens/buyart.dart';
import 'package:yourart/src/screens/mobilescreenlayout.dart';
import 'package:yourart/src/screens/profile.dart';
import 'package:yourart/src/screens/search.dart';

import 'package:yourart/src/screens/signin.dart';
import 'package:yourart/src/screens/signup.dart';
import 'package:yourart/src/screens/splashscreen.dart';
import 'package:yourart/src/screens/welcomescreen.dart';
import 'package:yourart/src/screens/yourcart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
       initialRoute: 'splash_screen',
      routes: {
        'welcomescreen':(context)=>  WelcomeScreen(),
        'signin': (context) => const SignIn(),
        'signup': (context) =>  SignUpScreen(),
        'splash_screen': (context) => const SplashScreen(),
        'home_screen': (context) =>  MobileScreenLayout(),
        'profile': (context) => ProfilePage(),
        'aboutus': (context) => AboutUsPage(),
        'yourcart': (context) => CartPage(),
        'buyart': (context) => BuyArtPage(),
        'search': (context) => SearchPage(),
        // 'singing': (context) => SingingPage(),
      },
    );
  }
}
