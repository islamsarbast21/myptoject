import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/main.dart';

class body extends StatelessWidget {
  const body({super.key});

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
          PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(child: Text("setting"),value: "setting",),
          PopupMenuItem(child: Text("started"),value: "stsrted",),
          PopupMenuItem(child: Text("whatsapp"),value: "whatsapp",),
          PopupMenuItem(child: Text("new groupe"),value: "new groupe",)]
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
          ),
    
    ),
    );
    
  }
}
