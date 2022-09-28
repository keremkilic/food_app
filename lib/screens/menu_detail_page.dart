// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, dead_code

import 'package:flutter/material.dart';
import 'package:food_app/ui/data.dart';
import 'package:food_app/ui/header.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(children: [
      Scaffold(
        body: Column(children: [
          //header
          SizedBox(
            height: topPadding + 34,
          ),
          header(),
          //resim
          SizedBox(height: 39),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 28, bottom: 28),
              margin: EdgeInsets.symmetric(horizontal: 59),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Color(0xFF02202C).withOpacity(0.05),
                  offset: Offset(0, 20),
                ),
              ]),
              child: Center(
                child: Image.asset(
                  "images/BurgerDetay.png",
                  width: screenWidth * 0.5,
                ),
              ),
            ),
          ),
          //artı - eksi buton
          SizedBox(height: 35),
          Container(
            padding: EdgeInsets.only(left: 18, right: 17, top: 15, bottom: 14),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "-",
                  style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "1",
                  style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "+",
                  style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),
                ),
              ],
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
          //başlık ve detay bilgileri
          SizedBox(height: 35),
          //aciklama
          Column(
            children: [
              Text(
                "Big boys Cheese burger",
                style: TextStyle(fontFamily: "Header", fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFF5A62E),
                      ),
                      Text("4+"),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.fireplace_outlined,
                        color: Colors.red,
                      ),
                      Text("300cal"),
                    ],
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.red,
                      ),
                      Text("5-10min"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 35),
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                margin: EdgeInsets.only(left: 37, right: 19),
                width: double.infinity,
                child: Text(
                  "Our simple, classic cheeseburger begins with a 100% pure beef burger seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped more",
                  style: TextStyle(
                      fontFamily: "Arial", fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF3D3D3D)),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 22),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Toppings for you",
                  style: TextStyle(fontFamily: "DM Sans", fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 20),
                  width: double.infinity,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: menuDetail.map((e) => elemanMenuDetail(e["name"], e["imageUrl"])).toList()),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ]),
      ),

      //En altta bulunan buton
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            heightFactor: 1,
            //widthFactor: 10,
            child: Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
              padding: EdgeInsets.only(left: 15, top: 15),
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
                "Add to cart",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    ]);

    //malzeleme ekleme

    //buton
  }

  Widget elemanMenuDetail(String name, String imagePath) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.orange, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(Icons.circle),
              ],
            ),
          ),
          SizedBox(
            width: 1,
          ),
          Container(
            padding: EdgeInsets.only(right: 18, top: 16, bottom: 16, left: 1),
            child: Text(
              name,
              style: TextStyle(fontFamily: "DM Sans", fontSize: 12, color: Color(0xFF000000)),
            ),
          ),
        ],
      ),
    );
  }
}
