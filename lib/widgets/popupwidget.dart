 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class popupwidget extends StatelessWidget {
  const popupwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(child: Text("setting"),value: "setting",),
          PopupMenuItem(child: Text("started"),value: "stsrted",),
          PopupMenuItem(child: Text("whatsapp"),value: "whatsapp",),
          PopupMenuItem(child: Text("new groupe"),value: "new groupe",)]
          );
  }
}