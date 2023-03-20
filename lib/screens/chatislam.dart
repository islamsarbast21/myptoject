 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:myprojectapp/screens/chatsUIs.dart';
import 'package:myprojectapp/userdata.dart';
class chatislam extends StatelessWidget {
  const chatislam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount:userlist.length
      ,itemBuilder: (context, Index) 
      {return  TextButton(
        onPressed:(){Navigator.pushNamed(context, chatUIs.screenRoute);} ,
        child: ListTile(
        title: Text(userlist[Index].name),
        subtitle: Text(userlist[Index].masegges),
        trailing: Text(userlist[Index].times),
        leading: CircleAvatar(backgroundImage: AssetImage(userlist[Index].image), )
        
        ),
      );
      
      } 
      ),
    );
  }
}