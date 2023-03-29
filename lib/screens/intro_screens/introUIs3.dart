import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class introPage3 extends StatelessWidget {
  const introPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromARGB(255, 10, 147, 106),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("All Time Service",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 25, 215, 72))),
            Lottie.asset("animations/10.json"),
            Container(
              width: 300,
              child: Text("We got top Developer crew leading by   Dilhaz Haji   AKA ' coding cobra ' that can serve client any time and any where ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 76, 14, 128))))
          ],
        ),
      ),
    );
  }
}