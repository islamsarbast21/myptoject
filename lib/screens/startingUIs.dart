import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myprojectapp/home.dart';
import 'package:myprojectapp/screens/intro_screens/introUIs1.dart';
import 'package:myprojectapp/screens/intro_screens/introUIs2.dart';
import 'package:myprojectapp/screens/intro_screens/introUIs3.dart';
import 'package:myprojectapp/screens/welcomeUIs.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  PageController _controller=PageController();
  bool onLastPage=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           PageView(
            controller: _controller,
            onPageChanged: (index){setState(() {
              onLastPage=(index==2);
            });},
            children: [
              introPage1(),
              introPage2(),
              introPage3()
            ],
        ),

        Container(
          alignment: Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  _controller.jumpToPage(2);
                },
                child: Text("Skip"),
                ),

              SmoothPageIndicator(controller: _controller,count: 3,),
              
              onLastPage?
              GestureDetector(
                 onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context){return Welcomescreen();}));
                  Navigator.pushNamed(context, Welcomescreen.screenRoute);
                },
                child: Text("Done")
                ):GestureDetector(
                 onTap: (){
                  _controller.nextPage(duration: Duration(milliseconds:600 ), curve: Curves.easeIn);
                },
                child: Text("Next")
                )
            ],
          ),
        )
        ],
      ),
    );
  }
}