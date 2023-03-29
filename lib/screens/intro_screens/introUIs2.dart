import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class introPage2 extends StatelessWidget {
  const introPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Lighting Fast",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700,color: Color.fromARGB(255, 255, 255, 255))),
            Lottie.asset("animations/5.json"),
            Container(
               width: 200,
              child: Text("Message everyone without felling any server trafic or latency in conversation",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 133, 10, 39),
                                      fontWeight: FontWeight.w500),
                      )
              )
          ],
        ),
      ),
    );
  }
}