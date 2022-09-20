import 'package:flutter/material.dart';

final kLoginDecorationStyle = BoxDecoration(
  //color: Colors.grey.withOpacity(0.5),
  color: const Color(0xffFFFFFF),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

class SizedHeightBox {
  static const height5 = SizedBox(height: 5);
  static const height7 = SizedBox(height: 7);
  static const height10 = SizedBox(height: 10);
  static const height15 = SizedBox(height: 15);
  static const height25 = SizedBox(height: 25);
  static const height30 = SizedBox(height: 30);
  static const height35 = SizedBox(height: 35);
  static const height45 = SizedBox(height: 45);
  static const height60 = SizedBox(height: 60);
}

class SizedWidthBox {
  static const width5 = SizedBox(width: 5);
  static const width7 = SizedBox(width: 7);
  static const width10 = SizedBox(width: 10);
  static const width15 = SizedBox(width: 15);
  static const width25 = SizedBox(width: 25);
}

class PaddingUtility {
  //PaddingSymmetric
  static const paddingSymmetricHor = EdgeInsets.symmetric(horizontal: 15);
  static const paddingSymmetricVer = EdgeInsets.symmetric(vertical: 15);
  static const paddingSymmetric40 = EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0);
  static const paddingSymmetric175 = EdgeInsets.symmetric(horizontal: 40.0, vertical: 175.0);
  static const paddingSymmetric10 = EdgeInsets.symmetric(vertical: 10, horizontal: 30);
  static const paddingSymmetricHor5 = EdgeInsets.symmetric(horizontal: 5, vertical: 10);

  //PaddingAll
  static const paddingAll10 = EdgeInsets.all(10);

  //PaddingOnly
  static const paddingOnlyTop10 = EdgeInsets.only(top: 10);
  static const paddingOnlyTop20 = EdgeInsets.only(top: 20);
  static const paddingOnlyTop25 = EdgeInsets.only(top: 25);
  static const paddingOnly10 = EdgeInsets.only(top: 10, bottom: 10);
}
