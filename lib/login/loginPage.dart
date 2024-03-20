import 'package:flutter/material.dart';
import 'package:slicing_tim6/forgot_password/forgot_password.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/custom_text_field.dart';
import 'package:slicing_tim6/widget/password_text_field.dart';

class LoginPage extends StatelessWidget {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100]
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                  hintText: "Email",
                  controller: txtEmail,
                  icon: Icons.mail_outline
              ),
              SizedBox(height: 20),
              PasswordTextField(
                  hintText: "Password",
                  controller: txtPassword,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigasi ke halaman lupa password saat teks ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgotPassword()), // Ganti dengan halaman yang sesuai
                      );
                    },
                    child: Text('Forgot Password?'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "Login",
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
