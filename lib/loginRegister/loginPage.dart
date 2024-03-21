import 'package:flutter/material.dart';
import 'package:slicing_tim6/Home/homePage.dart';
import 'package:slicing_tim6/forgot_password/forgot_password.dart';
import 'package:slicing_tim6/loginRegister/register.dart';
import 'package:slicing_tim6/widget/pageBottomBar.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/custom_text_field.dart';
import 'package:slicing_tim6/widget/password_text_field.dart';

class LoginPage extends StatelessWidget {
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
                      "Let’s Sign In.!",
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Login to Your Account to Continue your Courses",
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
                      Checkbox(
                        value: false, // Beri nilai sesuai kebutuhan
                        onChanged: (bool? value) {
                          // Tambahkan logika ketika kotak centang berubah
                        },
                      ),
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          color: Color(0xFF545454),
                          fontFamily: 'Mulish',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigasi ke halaman lupa password saat teks ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ForgotPassword()), // Ganti dengan halaman yang sesuai
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF545454),
                        fontFamily: 'Mulish',
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomButton(
                text: "Sign In",
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => PageBottomBar()),
                          (route) => false//nanti ubah ke page class yang sebenarnya
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
                      "Don't have an Account? ",
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
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text(
                        "SIGN UP",
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
