import 'package:flutter/material.dart';
import 'package:myprojectapp/home.dart';
import 'package:myprojectapp/screens/chatsUIs.dart';
import 'package:myprojectapp/screens/regestrationUIs.dart';
import 'package:myprojectapp/screens/signingUIs.dart';
import 'package:myprojectapp/screens/welcomeUIs.dart';
void main() {
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Color.fromRGBO(7, 94, 84, 1))),
      initialRoute: Welcomescreen.screenRoute,
      routes: {
        Welcomescreen.screenRoute:(context)=>Welcomescreen(),
        signingUIs.screenRoute:(context) => signingUIs(),
        registerationUIs.screenRoute:(context)=> registerationUIs(),
        body.screenRoute:(context) => body()
      },  

      );
  }
}
