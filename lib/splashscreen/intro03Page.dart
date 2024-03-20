import 'package:flutter/material.dart';
import 'package:slicing_tim6/login/loginPage.dart';


class SplashScreenIntro03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.circular(4); // Menginisialisasi objek BorderRadius.circular dengan radius 4
    return Scaffold(
      backgroundColor: Color(0xFFF5F9FF),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get Online Certificate",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Analyse your scores and Track your results",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                  textAlign: TextAlign.end, // Mengatur teks menjadi rata kanan
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                // Handle back button action
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF0961F5),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 27.3,
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
