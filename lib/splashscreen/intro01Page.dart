import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F9FF),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Online Learning",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black, // You can adjust the color here
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Subtitle",
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black, // You can adjust the color here
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 94,
            right: 16,
            child: GestureDetector(
              onTap: () {
                // Handle skip action
              },
              child: Container(
                width: 33,
                height: 23,
                alignment: Alignment.center,
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black, // You can adjust the color here
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
