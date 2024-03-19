import 'package:flutter/material.dart';

class SplashScreenIntro01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Background Color
      body: Stack(
        children: [
          Positioned(
            top: 40,
            right: 20,
            child: TextButton( // Mengubah FlatButton menjadi TextButton
              onPressed: () {
                // Aksi yang diambil saat tombol "Skip" ditekan
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Online Learning',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'We Provide Classes Online Classes and Pre Recorded Leactures.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Aksi yang diambil saat tombol "Panah Lingkaran" ditekan
              },
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
