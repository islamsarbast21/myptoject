import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/userdata.dart';

class call extends StatelessWidget {
  const call({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: userlist.length,itemBuilder: ((context,index){
      return ListTile(title: Text(userlist[index].name),
      leading:CircleAvatar(backgroundImage: AssetImage(userlist[index].image),  ),
      subtitle: Text(userlist[index].times),
      trailing:Icon(Icons.missed_video_call,size: 40,color: Colors.red,) ,);

    }
    ),);
  }
}