import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/showOTPdialog.dart';
import '../widgets/showSnackBar.dart';

class FirebaseAuthMethods{
   final FirebaseAuth _auth;
   FirebaseAuthMethods(this._auth);


Future<void> phoneSignIn(
  BuildContext context,
  String phoneNumber
) async{
  TextEditingController codeController = TextEditingController();
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential)async{
        await _auth.signInWithCredential(credential);

      },
      verificationFailed: (e){
        showSnackBar(context, e.message!);
      },
      codeSent: ( (String verificationId,int? resendToken) async{
        showOTPdialog(context: context, codeController: codeController, onPressed: ()async{
          PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId,
            smsCode:codeController.text.trim(),
          );

          await _auth.signInWithCredential(credential);
          Navigator.of(context).pop();
        } );
      }),
      codeAutoRetrievalTimeout: (String verificationId) {
        
      },
    );
}
}


