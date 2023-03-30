import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/screens/phoneUIs.dart';
import 'package:myprojectapp/screens/regestrationUIs.dart';
import 'package:myprojectapp/screens/signingUIs.dart';

import '../widgets/my_button.dart';

class Welcomescreen extends StatefulWidget {
  static const String screenRoute = "welcomeUIs";
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 147, 106),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  child: Image.asset('images/img_four.png'),
                ),
                Text(
                  "Whatsapp",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(5, 85, 76, 1)),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            myButton(
              color: Colors.white,
              title: "Sign in",
              onPressed: () {
                Navigator.pushNamed(context, signingUIs.screenRoute);
              },
            ),
            myButton(
                color: Colors.blue,
                title: "Register",
                onPressed: () {
                  Navigator.pushNamed(context, registerationUIs.screenRoute);
                }),
            myButton(
                color: Color.fromARGB(255, 179, 121, 197),
                title: "Register with cell phone",
                onPressed: () {
                  Navigator.of(this.context).pushNamed(signingUIs.screenRoute);
                }) //Navigator.pushNamed(context, phoneUIs.screenRoute);
          ],
        ),
      ),
    );
  }
}
