import 'package:flutter/material.dart';
import 'package:food_app/ui/data.dart';
import 'package:food_app/screens/menu_detail_page.dart';
import 'package:food_app/ui/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  //sonlandırmak için
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;
    //double rightPadding = MediaQuery.of(context).padding.right;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        fixedColor: const Color(0xFFFE554A),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Ana Sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Favoriler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "Bildirimler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Sepet",
          ),
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            gradient: const LinearGradient(
              colors: [
                Color(0xFFF9881F),
                Color(0xFFFF774C),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.10),
                offset: const Offset(0, 3),
                blurRadius: 10,
              ),
            ],
            shape: BoxShape.circle),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: const Icon(Icons.search),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      backgroundColor: const Color(0xFFE4E6E7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: topPadding + 34),

            // header
            header(),
            Container(
              padding: const EdgeInsets.only(top: 40, left: 24, right: 64),
              child: const Text(
                "Enjoy Delicious food",
                style: TextStyle(fontFamily: "Header", color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ListView(
                  padding: const EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  children: categoryData.map((e) => listeElemani(e["name"], e["imageUrl"])).toList()),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 21.0,
                right: 11.0,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 35, left: 5, right: 40),
                      child: const Text(
                        "Populer Restaurants",
                        style: TextStyle(
                            fontFamily: "Header", color: Color(0xFF3D3D3D), fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 50, left: 40, right: 10),
                      child: const Text(
                        "View all(29)",
                        style: TextStyle(
                            fontFamily: "Regular",
                            color: Color(0xFFFE554A),
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildRestaurant(screenWidth, "Big cheese burger"),
                    buildRestaurant(screenWidth, "Medium cheese burger"),
                    buildRestaurant(screenWidth, "Small cheese burger"),
                    buildRestaurant(screenWidth, "XL cheese burger"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget buildRestaurant(double screenWidth, String name) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
            // builder: (context) => const CartPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
        width: screenWidth * 0.60,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        margin: const EdgeInsets.only(right: 34),
        child: Column(
          children: [
            // resim (Image.asset)
            Image.asset(
              "assets/images/png/BurgerDetay.png",
              width: 170,
              height: 112,
            ),
            // başlık ve metin (column)
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontFamily: "DM Sans", fontSize: 16, fontWeight: FontWeight.bold, color: const Color(0xFF3D3D3D)),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "No 10 opp lekki phase 1 bridge in sangotedo estate",
                  style: const TextStyle(
                      fontFamily: "DM Sans", fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFF3D3D3D)),
                ),
              ],
            ),
            // favori, like (row)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xFFF5A62E),
                    ),
                    const Text("4+"),
                  ],
                ),
                const Icon(
                  Icons.favorite,
                  color: Color(0xFFFE554A),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listeElemani(String name, String imagePath) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.orange.shade50, width: 3, style: BorderStyle.solid)),
        child: Container(
          padding: const EdgeInsets.only(top: 19, bottom: 10, left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.orange.shade50,
          ),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 30,
                height: 30,
              ),
              const SizedBox(height: 5),
              Container(
                child: Text(
                  // burada text list olarak nasıl vereceğim onu daha sonra inceleyeceğim.
                  name,
                  style: const TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //yığın kısmı
      const SizedBox(
        height: 10,
      ),
    ]);
  }
}
