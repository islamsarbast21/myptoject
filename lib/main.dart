import 'package:flutter/material.dart';
import 'package:myprojectapp/home.dart';
import 'package:myprojectapp/screens/chatislam.dart';
import 'package:myprojectapp/screens/chatsUIs.dart';
import 'package:myprojectapp/screens/phoneUIs.dart';
import 'package:myprojectapp/screens/regestrationUIs.dart';
import 'package:myprojectapp/screens/signingUIs.dart';
import 'package:myprojectapp/screens/welcomeUIs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth=FirebaseAuth.instance;
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Color.fromRGBO(7, 94, 84, 1))),
      initialRoute: _auth.currentUser!=null ? body.screenRoute:Welcomescreen.screenRoute,
      //initialRoute: Welcomescreen.screenRoute,
      routes: {
        Welcomescreen.screenRoute:(context)=>Welcomescreen(),
        signingUIs.screenRoute:(context) => signingUIs(),
        registerationUIs.screenRoute:(context)=> registerationUIs(),
        body.screenRoute:(context) => body(),
        phoneUIs.screenRoute:(context) => phoneUIs(),
        chatUIs.screenRoute:(context) => chatUIs()
      },  

      );
  }
}
