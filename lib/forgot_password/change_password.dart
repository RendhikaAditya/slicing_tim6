import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/custom_text_field.dart';
import 'package:slicing_tim6/widget/password_text_field.dart';

import '../loginRegister/loginPage.dart';
import '../widget/custom_button.dart';
import '../widget/custom_dialog.dart';

void main() {
  runApp(ChangePassword());
}

class ChangePassword extends StatefulWidget {
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool visible = true;
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            // Tombol di bagian bawah
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Your New Password",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(height: 20,),
                    PasswordTextField(hintText: "New Password", controller: newPassword),
                    SizedBox(height: 20,),
                    PasswordTextField(hintText: "Confirm Password", controller: confirmPassword),
                    SizedBox(height: 40,),
                    CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        CustomDialog.showCustomDialog(
                          navigatorContext: context,
                          image: 'assets/images/image_dialog_change_password.png',
                          title: 'Congratulations',
                          deskripsi: 'Your Account is Ready to Use. You will be redirected to the Home Page in a Few Seconds.',
                          visible: visible,
                        );
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            visible = false;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        });
                      },
                    ),

                    SizedBox(height: 150,),

                  ]
              ),
            ),
          ],
        ),
      ),
    );

  }
}
