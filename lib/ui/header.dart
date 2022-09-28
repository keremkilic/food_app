// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget header() {
  return Padding(
    padding: EdgeInsets.only(
      left: 21.0,
      right: 11.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ikon
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Icon(Icons.menu),
        ),
        // delivery
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Delivery to",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                Icon(Icons.arrow_drop_down), // bunun konumu düzeltilmeli...
              ],
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "lekki phase 1, Estate",
              style: TextStyle(fontFamily: "DM Sans", fontSize: 15, color: Colors.orange),
            ),
          ],
        ),
        // kafa
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Icon(Icons.account_circle),
        )
      ],
    ),
  );
}
