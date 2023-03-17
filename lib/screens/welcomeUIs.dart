import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/my_button.dart';

class Welcomescreen extends StatefulWidget {
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
          Column(children: [
            Container(
              child: Image.asset('images/img_four.png'),
            ),
            Text("Whatsapp",
              style: TextStyle(fontSize: 48,fontWeight: FontWeight.w900,color: Color.fromRGBO(5, 85, 76, 1)),
              )
          ],),
          SizedBox(height: 30,),
          myButton(color: Colors.white,title: "Sign in",onPressed: (){},),
          myButton(color: Colors.blue, title: "register", onPressed: (){})
        ],),
      ),
    );
  }
}
