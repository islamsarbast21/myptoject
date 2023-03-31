import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:myprojectapp/screens/chatsUIs.dart';
import 'package:myprojectapp/userdata.dart';
import 'package:intro_slider/intro_slider.dart';

class chatislam extends StatelessWidget {
  const chatislam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: userlist.length,
          itemBuilder: (context, Index) {
            return TextButton(
              onPressed: () {
                Navigator.pushNamed(context, chatUIs.screenRoute);
              },
              child: Slidable(
                startActionPane: ActionPane(motion: StretchMotion(), children: [
                  SlidableAction(
                    onPressed: ((context) {}),
                    icon: Icons.phone,
                    backgroundColor: Colors.green,
                    flex: 2,
                  ),
                  SlidableAction(
                    onPressed: ((context) {}),
                    icon: Icons.person_2_rounded,
                    backgroundColor: Colors.blue,
                    flex: 1,
                  )
                ]),
                child: ListTile(
                    title: Text(userlist[Index].name,
                        style: TextStyle(fontSize: 20)),
                    subtitle: Text(userlist[Index].masegges,
                        style: TextStyle(fontSize: 13)),
                    trailing: Text(userlist[Index].times,
                        style: TextStyle(fontSize: 15)),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(userlist[Index].image),
                    )),
                endActionPane: ActionPane(motion: StretchMotion(), children: [
                  SlidableAction(
                    onPressed: ((context) {}),
                    icon: Icons.delete,
                    backgroundColor: Colors.red,
                    flex: 2,
                  ),
                  SlidableAction(
                    onPressed: ((context) {}),
                    icon: Icons.notifications_off_rounded,
                    backgroundColor: Color.fromARGB(255, 126, 167, 174),
                    flex: 1,
                  )
                ]),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 10,
        child: Icon(Icons.message_outlined),
        backgroundColor: Color.fromARGB(255, 60, 113, 108),
      ),
    );
  }
}
