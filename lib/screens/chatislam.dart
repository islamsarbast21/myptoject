 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
class chatislam extends StatelessWidget {
  const chatislam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: 1,itemBuilder: (context, i) 
      {return  ListTile(title: Text("islam"),
      subtitle: Text("hi"),
      trailing: Text("seen now"),
      leading: CircleAvatar(child: Image.network("https://upload.wikimedia.org/wikipedia/commons/4/47/Vladimir_Putin_17-11-2021_%28cropped%29.jpg"),)
      );
      
      } 
      ),
    );
  }
}