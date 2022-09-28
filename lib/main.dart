import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/splash_screens/stores_page.dart';

import 'models/image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: PngImage(path: ImageItems().LogoWithoutPath),
        nextScreen: const StoresPage(),
        splashTransition: SplashTransition.scaleTransition,
        duration: 2500,
      ),
    );
  }
}
