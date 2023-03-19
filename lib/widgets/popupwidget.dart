 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';

class popupwidget extends StatefulWidget {
  const popupwidget({super.key});

  @override
  State<popupwidget> createState() => _popupwidgetState();
}

class _popupwidgetState extends State<popupwidget> {

  final _auth=FirebaseAuth.instance;
    late User signingUser;


     @override
      void initState(){
        super.initState();
        getCurrentUser();
     }
     void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signingUser = user;
        print(signingUser.email);
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context)=>[

          PopupMenuItem(child: Text("started"),value: "stsrted",),
          PopupMenuItem(child: Text("whatsapp"),value: "whatsapp",),
          PopupMenuItem(child: Text("new groupe"),value: "new groupe",),
          PopupMenuItem(child: TextButton(child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.output_rounded),
              SizedBox(width: 10,),
              
              Text("sign out"),
              
              
            ],
          ),
          onPressed: (){            
            _auth.signOut();
             Navigator.pop(context);
          },)
          )
          ]
          );
  }
}