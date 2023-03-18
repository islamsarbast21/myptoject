import 'package:flutter/material.dart';

void showOTPdialog(
  {
    required BuildContext context,
    required TextEditingController codeController,
    required VoidCallback onPressed,
  }
){
  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (context)=>AlertDialog(
      title: const Text("enter OTP"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children:<Widget> [
          TextField(
            controller: codeController,
          )
        ],
      ),
      actions:<Widget> [
        TextButton(onPressed: onPressed, child: const Text("Done"))
      ],
    )

    );
}