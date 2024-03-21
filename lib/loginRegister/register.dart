import 'package:flutter/material.dart';
import 'package:slicing_tim6/fill_profile/fill_profile.dart';
import 'package:slicing_tim6/forgot_password/forgot_password.dart';
import 'package:slicing_tim6/loginRegister/loginPage.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/custom_text_field.dart';
import 'package:slicing_tim6/widget/password_text_field.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF5F9FF),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo di tengah
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo2.png',
                      width: 185,
                      height: 70,
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              // Title dan subtitle rata kiri
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Getting Started.!",
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Create an Account to Continue your allCourses",
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              CustomTextField(
                hintText: "Email",
                controller: txtEmail,
                icon: Icons.mail_outline,
              ),
              SizedBox(height: 20),
              PasswordTextField(
                hintText: "Password",
                controller: txtPassword,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                       Image.asset(
                      'assets/images/iconagree.png',
                      width: 24,
                      height: 24,
                    ),
                      Text(
                        'Agree to Terms & Conditions',
                        style: TextStyle(
                          color: Color(0xFF545454),
                          fontFamily: 'Mulish',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  
                ],
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "Sign Up",
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FillProfile()),
                        );
                },
              ),
              SizedBox(height: 20),
              // "Or Continue With" di tengah
              Center(
                child: Text(
                  "Or Continue With",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF545454),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Icon Google dan Apple di tengah
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 48,
                      height: 48,
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      'assets/images/apple.png',
                      width: 48,
                      height: 48,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // "Don’t have an Account? SIGN UP" menjadi tengah
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account?",
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF545454),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
