import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myprojectapp/widgets/showSnackBar.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Receive an email to reset your password",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              TextFormField(
                controller: emailController,
                cursorColor: Colors.amber,
                decoration: InputDecoration(labelText: 'email'),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? 'enter a valid email'
                        : null,
              ),
              ElevatedButton.icon(
                  onPressed: resetPassword,
                  icon: Icon(Icons.email_outlined),
                  label: Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 14),
                  ))
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 10, 147, 106),
    );
  }

  Future resetPassword() async {
    showDialog(
        context: context,
        builder: (context) => Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showSnackBar(context, "password Reset email sent");
      Navigator.of(context);
    } on FirebaseAuthException catch (e) {
      print(e);
      showSnackBar(context, e.message.toString());
      Navigator.of(context).pop();
    }
  }
}
