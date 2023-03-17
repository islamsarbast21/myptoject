import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  myButton({
   required this.color,required this.title,required this.onPressed
  });

  final Color color;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Material(
        elevation: 5,
        color:color,
        borderRadius: BorderRadius.circular(15),
        child: MaterialButton(onPressed: () => onPressed,
        height: 42,
        minWidth: 200,
        child: Text(title,style: TextStyle(color: Color.fromRGBO(7, 94, 84, 1),fontSize: 18,fontWeight: FontWeight.w700),),),
      ),
    );
  }
}