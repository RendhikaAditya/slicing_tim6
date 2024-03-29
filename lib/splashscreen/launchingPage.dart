import 'package:flutter/material.dart';
// import 'package:slicing_tim6/forgot_password/forgot_password.dart';
import 'package:slicing_tim6/splashscreen/intro01Page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 2), () {
      // Navigator.of(context).pushReplacement(
        // MaterialPageRoute(
        //   builder: (_) => ForgotPassword(),
        // ),
      // );
    // });
    return Scaffold(
      backgroundColor: Color(0xFF0961F5), // Warna latar belakang splash screen
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SplashScreenIntro01()),
          );
        },
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/shape.png', // Path gambar pertama
                width: 430, // Lebar gambar pertama
                height: 430, // Tinggi gambar pertama
              ),
              Image.asset(
                'assets/images/oval.png', // Path gambar kedua
                width: 330, // Lebar gambar kedua
                height: 330, // Tinggi gambar kedua
              ),
              Image.asset(
                'assets/images/logo1.png', // Path gambar ketiga
                width: 116, // Lebar gambar ketiga
                height: 158, // Tinggi gambar ketiga
              ),
            ],
          ),
        ),
      ),
    );
  }
}
