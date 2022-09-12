// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ImageItems {
  final String AnimatedSplashScreen = "assets/images/png/property1.png";
  final String LogoWithoutPath = "property1";

  final String StoresScreen = "assets/images/png/group.png";
  final String StoresWithoutPath = "group";

  final String DeliciousScreen = "assets/images/png/delicious.png";
  final String DeliciousWithoutPath = "delicious";

  final String PaymentScreen = "assets/images/png/mask.png";
  final String PaymentWithoutPath = "mask";

  final String EllipsePaymentScreen = "assets/images/png/Ellipse.png";
  final String EllipseWithoutPath = "Ellipse";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.path}) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_animatedSplashScreen, fit: BoxFit.contain);
  }

  String get _animatedSplashScreen => 'assets/images/png/$path.png';
}
