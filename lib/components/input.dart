import 'package:flutter/material.dart';
import '../const/constants.dart';
import '../components/decoration.dart';

@override
Widget buildInput(String name, Function(String string) onChanged) {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: kLoginDecorationStyle,
      child: TextFormField(
        cursorColor: sliderColor,
        onChanged: onChanged,
        keyboardType: TextInputType.emailAddress,
        obscureText: name == "Parola" ? true : false,
        style: black16TextStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: name,
          hintStyle: const TextStyle(color: Color(0xff262934)),
        ),
      ));
}
