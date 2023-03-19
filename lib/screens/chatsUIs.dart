import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';

class chatUIs extends StatefulWidget {
   static const String screenRoute ="chatsUIs";
  const chatUIs({super.key});

  @override
  State<chatUIs> createState() => _chatUIsState();
}

class _chatUIsState extends State<chatUIs> {
  final _auth = FirebaseAuth.instance;
  late User signedInUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 53, 74, 82),
        title: Row(children: [
          CircleAvatar(backgroundImage: AssetImage('images/img_pr1.jpg')),
          SizedBox(width: 10,),
          Text('maroon')
        ],),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.close))
        ],
      ),
      body: SafeArea(
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Container(),
           Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color.fromARGB(255, 53, 74, 82),width: 8))
            ),
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 53, 74, 82)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),color: Color.fromARGB(255, 18, 82, 110)),
                    width: 310,
                    child: Expanded( child: TextField(
                      
                      cursorRadius: Radius.circular(20),
                      onChanged: (value){},
                      decoration: InputDecoration(
                        
                        contentPadding: EdgeInsets.symmetric(vertical:8,horizontal: 20),
                        hintText: 'Write your message here...',border: InputBorder.none
                        ),
                    )),
                  ),
                  TextButton(onPressed: (){}, 
                    child: Text('send',
                    style: TextStyle(color: Color.fromARGB(255, 250, 252, 254),fontWeight: FontWeight.w700,fontSize: 18),
                 )  
                       
                       )
                ],
              ),
            ),
           ),
           
          ],
        )
        
         ),
         backgroundColor:Color.fromARGB(255, 38, 66, 110),
    );
  }
}