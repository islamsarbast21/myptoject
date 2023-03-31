import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:myprojectapp/home.dart';
import 'package:myprojectapp/screens/chatsUIs.dart';
import 'package:myprojectapp/screens/startingUIs.dart';

class HiddenDrawerUIs extends StatefulWidget {
  static const String screenRoute = "hidden_drawer";
  const HiddenDrawerUIs({super.key});

  @override
  State<HiddenDrawerUIs> createState() => _HiddenDrawerUIsState();
}

class _HiddenDrawerUIsState extends State<HiddenDrawerUIs> {
  List<ScreenHiddenDrawer> _screens = [];
  void initState() {
    super.initState();
    _screens = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'WhatsApp',
            baseStyle: TextStyle(fontSize: 34, color: Colors.green),
            selectedStyle: TextStyle(),
          ),
          body())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _screens,
        initPositionSelected: 0,
        backgroundColorMenu: Color.fromARGB(255, 30, 69, 51));
  }
}
