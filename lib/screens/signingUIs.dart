import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/my_button.dart';

class signingUIs extends StatefulWidget {
  static const String screenRoute ="signingUIs";
  const signingUIs({super.key});

  @override
  State<signingUIs> createState() => _signingUIsState();
}

class _signingUIsState extends State<signingUIs> {
  final _auth=FirebaseAuth.instance;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 10, 147, 106),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
          Container(
            height: 150,
            child: Image.asset('images/img_one.png'),

          ),
          Text("Sign in",
              style: TextStyle(fontSize: 48,fontWeight: FontWeight.w900,color: Color.fromRGBO(5, 85, 76, 1),),
              ),
          SizedBox(height: 50),
          TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),
            textAlign: TextAlign.center,
            onChanged: (value){},
            decoration: InputDecoration(
              
              hintText: "enter your E-mail",
              contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255),width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,width: 3),
                  borderRadius: BorderRadius.circular(10),
                ) ,
              
              ),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText: true,
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),
            textAlign: TextAlign.center,
            onChanged: (value){},
            decoration: InputDecoration(
              hintText: "enter your Password",
              contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255),width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,width: 3),
                  borderRadius: BorderRadius.circular(10),
                ) ,
              
              ),
          ),
          SizedBox(height: 10,),
          myButton(color: Color.fromARGB(255, 247, 247, 247), title: "Sign in", onPressed: (){Navigator.pushNamed(context, body.screenRoute);})
        ],),
      ),
    );
  }
}