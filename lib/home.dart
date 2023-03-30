import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/main.dart';
import 'package:myprojectapp/screens/callUIs.dart';
import 'package:myprojectapp/screens/chatislam.dart';
import 'package:myprojectapp/screens/chatsUIs.dart';
import 'package:myprojectapp/screens/groupUIs.dart';
import 'package:myprojectapp/widgets/popupwidget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class body extends StatefulWidget {
  static const String screenRoute = "home";
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  final _auth = FirebaseAuth.instance;
  late User signedInUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "whatsApp",
            style: TextStyle(fontSize: 30),
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.people_alt_rounded),
            ),
            Tab(child: Text("chat", style: TextStyle(fontSize: 17))),
            Tab(child: Text("status", style: TextStyle(fontSize: 17))),
            Tab(child: Text("calls", style: TextStyle(fontSize: 17)))
          ]),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            popupwidget(),
          ],
          automaticallyImplyLeading: false,
        ),
        body:
            TabBarView(children: [GroupUIs(), chatislam(), Text("3"), call()]),
      ),
    );
  }
}
