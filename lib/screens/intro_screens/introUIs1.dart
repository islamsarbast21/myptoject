import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class introPage1 extends StatelessWidget {
  const introPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 38, 149, 153),
      child: Center(
        child: Text("1"),
      ),
    );
  }
}