// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/ui/header.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(children: [
        //header
        SizedBox(
          height: topPadding + 34,
        ),
        header(),
        //resim
        SizedBox(height: 10),
        Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(left: 21, top: 40, right: 67),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Your Cart",
                style: TextStyle(fontFamily: "Header", fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        buildCart(screenWidth, "The MacDonalds"),
        SizedBox(height: 17),
        buildCart(screenWidth, "The MacDonalds"),
        SizedBox(height: 20),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 11, top: 24, bottom: 24, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Color(0xFF02202C).withOpacity(0.05),
                    offset: Offset(0, 20),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "The MacDonalds",
                        style: TextStyle(
                            fontFamily: "DM Sans", fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF3D3D3D)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Classic CheeseBurger",
                        style: TextStyle(
                            fontFamily: "Regular", fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF3D3D3D)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$23.99",
                        style: TextStyle(fontFamily: "DM Sans", fontSize: 16, color: Color(0xFFFE554A)),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: const [
                              Color(0xFFF9881F),
                              Color(0xFFFF774C),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 16, color: Color(0xFF3D3D3D)),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: const [
                              Color(0xFFF9881F),
                              Color(0xFFFF774C),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 25),
                  margin: EdgeInsets.only(left: 10, top: 55, right: 10, bottom: 50),
                  //width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFDAFAE5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //kalem icon gelecek
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 25),
              margin: EdgeInsets.only(top: 55, right: 10, bottom: 50),
              //width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFFBE7E7),
                borderRadius: BorderRadius.circular(20),
              ),
              //çöp kutusu icon gelecek
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.only(left: 44, right: 51),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Total",
                style: TextStyle(fontFamily: "Body Regular", fontSize: 14, color: Color(0xFF3D3D3D)),
              ),
              Text(
                "\$345",
                style: TextStyle(
                    fontFamily: "Header", fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF3D3D3D)),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.only(left: 11, top: 24, bottom: 24, right: 25),
          margin: EdgeInsets.only(left: 24, right: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: const [
                Color(0xFFF9881F),
                Color(0xFFFF774C),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Text(
            "Process to payment",
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFFFFFFFF),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }

  Widget buildCart(double screenWidth, String name) {
    return Container(
      padding: EdgeInsets.only(left: 11, top: 24, bottom: 24, right: 25),
      //margin: EdgeInsets.only(left: 20, top: 43, bottom: 17, right: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            color: Color(0xFF02202C).withOpacity(0.05),
            offset: Offset(0, 20),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/BurgerDetay.png",
                width: 78,
                height: 68,
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "The MacDonalds",
                style: TextStyle(
                    fontFamily: "DM Sans", fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF3D3D3D)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Classic CheeseBurger",
                style: TextStyle(
                    fontFamily: "Regular", fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF3D3D3D)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$23.99",
                style: TextStyle(fontFamily: "DM Sans", fontSize: 16, color: Color(0xFFFE554A)),
              ),
            ],
          ),
          SizedBox(width: 10),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                // ignore: prefer_const_literals_to_create_immutables
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: const [
                      Color(0xFFF9881F),
                      Color(0xFFFF774C),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              Container(
                // ignore: prefer_const_literals_to_create_immutables
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 16, color: Color(0xFF3D3D3D)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                // ignore: prefer_const_literals_to_create_immutables
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: const [
                      Color(0xFFF9881F),
                      Color(0xFFFF774C),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
