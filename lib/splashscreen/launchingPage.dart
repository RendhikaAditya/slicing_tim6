import 'package:flutter/material.dart';
import 'package:slicing_tim6/splashscreen/intro01Page.dart';



class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo besar.png', // Ganti dengan path gambar logo
                width: 116, // Lebar gambar
                height: 158, // Tinggi gambar
              ),
            ],
          ),
        ),
      ),
    );
  }
}
