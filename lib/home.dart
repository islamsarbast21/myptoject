import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/main.dart';
import 'package:myprojectapp/screens/chatislam.dart';
import 'package:myprojectapp/widgets/popupwidget.dart';

class body extends StatefulWidget {
  static const String screenRoute ="home";
  const body({super.key});

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,initialIndex: 1, 
    child: Scaffold(
      appBar: AppBar
      (title: Text("whatsApp"),bottom: TabBar(
        tabs: [
          Tab(child: Icon(Icons.camera_alt_outlined),),
          Tab(child:Text("chat") ),
          Tab(child:Text("status") ),
          Tab(child:Text("calls") )
          ]
      ),
        actions: [
          popupwidget(),
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
          ),
    body: TabBarView(children: [Text("1"),
    chatislam(),
    Text("3"),
    Text("4"),]),
    ),
    );
    
  }
}
