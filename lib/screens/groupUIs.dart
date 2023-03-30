import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class GroupUIs extends StatelessWidget {
  const GroupUIs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/img_four.png'),
          Text(
            "Coming soon...",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w700, color: Colors.green),
          )
        ],
      )),
    );
  }
}
