import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class introPage1 extends StatelessWidget {
  const introPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 192, 241, 243),
      child: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("Twisted WhatsApp",style: TextStyle(fontSize: 34,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 65, 212, 75)),),
            SizedBox(height: 20,),
            Lottie.asset('animations/8.json'),
            SizedBox(height: 150,),
            Text("all copy right belong to company of ",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 13, 48, 57),fontWeight: FontWeight.w500),),
            Text("'duhok folks developers'",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 158, 58, 179),fontWeight: FontWeight.w600),)
           
            ],
        ),
        
      ),
    );
  }
}