import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/home.dart';
import 'package:myprojectapp/screens/signingUIs.dart';
import 'package:myprojectapp/screens/welcomeUIs.dart';
import 'package:myprojectapp/widgets/my_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myprojectapp/widgets/showOTPdialog.dart';
import 'package:myprojectapp/widgets/showSnackBar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class registerationUIs extends StatefulWidget {
  static const String screenRoute ="regestrationUIs";
  const registerationUIs({super.key});

  @override
  State<registerationUIs> createState() => _registerationUIsState();
}

class _registerationUIsState extends State<registerationUIs> {

  final _auth =FirebaseAuth.instance;

  late String email;
  late String password;

  bool showSpinner=false;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 10, 147, 106),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
            Container(
              height: 150,
              child: Image.asset('images/img_three.png'),
      
            ),
            Text("Registration",
                style: TextStyle(fontSize: 48,fontWeight: FontWeight.w900,color: Color.fromRGBO(5, 85, 76, 1),),
                ),
            SizedBox(height: 50),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),
              textAlign: TextAlign.center,
              onChanged: (value){
                email=value;
              },
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
            
            SizedBox(height: 14,),
            TextField(
              obscureText: true,
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),
              textAlign: TextAlign.center,
              onChanged: (value){
                password=value;
              },
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
            SizedBox(height: 10,),
            
            myButton(
              color: Color.fromARGB(255, 240, 240, 240),
              title: "register", onPressed: () async{
                  setState(() {
                    showSpinner=true;
                  });
                  
                  try {
                    
                    final newUser =await _auth.createUserWithEmailAndPassword(
                    email: email,
                    password: password
                    
                  );
                  Navigator.pushNamed(context,signingUIs.screenRoute);
                  setState(() {
                    showSpinner=false;
                  });
                  } catch (e) {
                    print(e);
                  }
      
                
            })
          ],),
        ),
      ),
    );
  }



}

