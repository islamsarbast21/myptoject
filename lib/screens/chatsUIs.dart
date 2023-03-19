import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


final _firestore =FirebaseFirestore.instance;
class chatUIs extends StatefulWidget {
   static const String screenRoute ="chatsUIs";
  const chatUIs({super.key});

  @override
  State<chatUIs> createState() => _chatUIsState();
}

class _chatUIsState extends State<chatUIs> {
  
  final _auth = FirebaseAuth.instance;
  late User signedInUser;//this will give us email
  String? messageText;//this will give us the message
  

  void initState(){
    super.initState();
    getCurrentUser();

  }

  void getCurrentUser(){
    try {
      final user=_auth.currentUser;
      if (user!=null) {
        signedInUser=user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
      print("nooo plz ");
    }
  }

  // void getMessages()async{
  //   final messages= await _firestore.collection('messages').get();
  //   for(var message in messages.docs) {
  //     print(message.data());
  //   }
  // }

  void messageStreams()async{
   await for(var snapshot in _firestore.collection('messages').snapshots()){
    for(var message in snapshot.docs){
      print(message.data());
    }
   }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 34, 118, 111),
        title: Row(children: [
          CircleAvatar(backgroundImage: AssetImage('images/img_pr1.jpg')),
          SizedBox(width: 10,),
          Text('maroon')
        ],),
        actions: [
          IconButton(onPressed: (){

            messageStreams();
            //_auth.signOut();
            //  Navigator.pop(context);
          }, icon: Icon(Icons.download))
        ],
      ),
      body: SafeArea(
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           MessageStreameBuilder(),
           Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color:Color.fromARGB(255, 34, 118, 111),width: 5))
            ),
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 34, 118, 111)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),color: Color.fromARGB(255, 18, 82, 110)),
                    width: 310,
                    child: Expanded( 
                      child: TextField(
                      
                      cursorRadius: Radius.circular(20),
                      onChanged: (value){
                        messageText=value;
                      },
                      decoration: InputDecoration(
                        
                        contentPadding: EdgeInsets.symmetric(vertical:8,horizontal: 20),
                        hintText: 'Write your message here...',border: InputBorder.none
                        ),
                    )),
                  ),
                  TextButton(onPressed: (){
                    _firestore.collection('messages').add({
                          'text':messageText,
                          'sender':signedInUser.email
                        }//assocciated array ,this will create data in database
                        );//the name of database inside firebase
                  }, 
                    child: Text('send',
                    style: TextStyle(color: Color.fromARGB(255, 250, 252, 254),fontWeight: FontWeight.w600,fontSize: 18),
                    )  
                  )

                ],
              ),
            ),
           ),
           
          ],
        )
        
         ),
         backgroundColor:  Color.fromARGB(255, 53, 74, 82),
         
    );
  }
}

class MessageStreameBuilder extends StatelessWidget {
  const MessageStreameBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('messages').snapshots(),
            builder: (context,snapshot){
              List<MessageLine> messageWidgets =[];

              if(!snapshot.hasData){
                //add here a spiner
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.blueGrey,
                  ),
                );
              }else{
              final messages=snapshot.data?.docs; 
              for (var message in messages!) {
                final messageText = message.get('text');
                final messageSender=message.get('sender');
                final messageWidget = MessageLine(sender: messageSender,text: messageText,);
                messageWidgets.add(messageWidget);
              }
              return Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  children: messageWidgets,
                ),
              );
              }
            },
            );
  }
}




class MessageLine extends StatelessWidget {
  const MessageLine({this.sender,this.text,super.key});
  final String? sender;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.end ,
      children: [
        Text('$sender',style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 219, 207, 172)),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
          child: Material( 
            color: Color.fromARGB(255, 24, 49, 86),child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$text - $sender',style: TextStyle(fontSize: 16,
               color: Colors.white),
                      ),
            ),
          borderRadius: BorderRadius.circular(20),
          elevation:5 ,
          ),
        
        ),
      ],
    ) ;
  }
}