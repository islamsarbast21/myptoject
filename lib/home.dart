import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/main.dart';
import 'package:myprojectapp/screens/callUIs.dart';
import 'package:myprojectapp/screens/chatislam.dart';
import 'package:myprojectapp/screens/chatsUIs.dart';
import 'package:myprojectapp/screens/groupUIs.dart';
import 'package:myprojectapp/screens/signingUIs.dart';
import 'package:myprojectapp/screens/welcomeUIs.dart';
import 'package:myprojectapp/widgets/my_header_drawer.dart';
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
            //popupwidget(),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 33, 132, 99),
          child: SingleChildScrollView(
            child: Container(
              child: Column(children: [MyHeaderDrawer(), MyDrawerList()]),
            ),
          ),
        ),
        body:
            TabBarView(children: [GroupUIs(), chatislam(), Text("3"), call()]),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      color: Color.fromARGB(255, 164, 46, 89),
      padding: EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //show list of menu
        children: [
          MyMenuItem(
            "profile",
            Icons.assignment_ind_rounded,
          ),
          MyMenuItem(
            "home",
            Icons.home,
          ),
          MyMenuItem(
            "home",
            Icons.home,
          ),
          MyMenuItem(
            "home",
            Icons.home,
          ),
          MyMenuItem(
            "home",
            Icons.home,
          ),
          MyMenuItem(
            "home",
            Icons.home,
          ),
          IconButton(
              onPressed: () {
                _auth.signOut();
                Navigator.of(context).pushNamed(Welcomescreen.screenRoute);
              },
              icon: Icon(Icons.exit_to_app_rounded))
        ],
      ),
    );
  }
}

Widget MyMenuItem(String title, IconData icon) {
  return Material(
    color: Color.fromARGB(255, 33, 132, 99),
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
                child: Icon(
              icon,
              size: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            )),
            Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyle(color: Color.fromARGB(255, 252, 252, 252)),
                ))
          ],
        ),
      ),
    ),
  );
}
