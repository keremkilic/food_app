import 'package:flutter/material.dart';
import 'package:food_app/screens/splash_screens/payment_page.dart';
import 'package:food_app/screens/splash_screens/stores_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/input.dart';
import '../../models/image.dart';
import '../splash_screens/delicious.dart';
import '../login_to_my_page.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({super.key});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  @override
  Widget build(BuildContext context) {
    const emailAdresi = 'Enter Email';
    const parola = 'Enter Password';
    const confirmParola = 'Confirm Password';
    return Scaffold(
        appBar: AppBar(
          title: Container(height: 25, child: PngImage(path: ImageItems().LogoWithoutPath)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                );
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Color(0xFFFA5A1E),
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19, right: 19, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Create an account",
                        style: TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Text(
                          "Welcome friend, enter your details so lets get \tstarted in ordering food",
                          style: TextStyle(
                            color: Color(0xFF1C1C1C),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 11,
                      ),
                    ),
                  ),
                  buildInput(emailAdresi, (String value) {
                    setState(() {});
                  }),
                  const SizedBox(height: 25),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 11,
                      ),
                    ),
                  ),
                  buildInput(parola, (String value) {
                    setState(() {});
                  }),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 11,
                      ),
                    ),
                  ),
                  buildInput(confirmParola, (String value) {
                    setState(() {});
                  }),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 80, right: 80),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Container(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(200, 50),
                        ),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFFFFFFFF),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          PngImage(path: ImageItems().SingWithoutPath),
                          const SizedBox(width: 10),
                          const Text(
                            "Sign-in with Google",
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Container(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(360, 50),
                        ),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFFFA5A1E),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Create an account",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginMyPage(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(360, 50),
                        ),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFFFFFFFF),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Login to my account",
                        style: TextStyle(
                          color: Color(0xFFFA5A1E),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
