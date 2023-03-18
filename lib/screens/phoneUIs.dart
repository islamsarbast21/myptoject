import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:myprojectapp/services/phoneSer.dart';
import 'package:myprojectapp/widgets/my_button.dart';

import '../widgets/my_textEdit.dart';

class phoneUIs extends StatefulWidget {
  static const String screenRoute ="phoneUIs";
  const phoneUIs({super.key});

  @override
  State<phoneUIs> createState() => _phoneUIsState();
}

class _phoneUIsState extends State<phoneUIs> {
  final TextEditingController phoneController = TextEditingController();

  void dispose() {
    super.dispose();
    phoneController.dispose();
  }
  void phoneSignIn(){
    FirebaseAuthMethods(FirebaseAuth.instance).phoneSignIn(context, phoneController.text);

  }
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
            height: 200,
            child: Image.asset('images/img_three.png'),

          ),
          Text("Registration with Phone No.",
              style: TextStyle(fontSize: 48,fontWeight: FontWeight.w900,color: Color.fromRGBO(5, 85, 76, 1),),
              ),

          SizedBox(height: 20,),

          /*
          TextField(
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),
            
            decoration: InputDecoration(
              
              hintText: "enter phone Number",
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
          */
         
          CustomTextField(controller: phoneController,hintText: 'Enter phone number'),
          SizedBox(height: 10,),

          myButton(color: Color.fromARGB(250, 230, 223, 223), title: "send OTP", onPressed:phoneSignIn )
          
          
        ],),
      ),
    );
  }
}