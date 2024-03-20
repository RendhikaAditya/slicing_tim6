import 'package:flutter/material.dart';
import 'package:slicing_tim6/login/loginPage.dart';
import 'package:slicing_tim6/widget/custom_button.dart';


class LetsYouIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 122,
              height: 35,
              child: Text(
                "let's you in",
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 34.68 / 24,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Image.asset('assets/images/google.png'),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 172,
                  height: 20,
                  child: Text(
                    "Continue with Google",
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF545454),
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Image.asset('assets/images/apple.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Continue with Apple",
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF545454),
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: "Sign In with Your Account",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            )
            // ElevatedButton(
            //   onPressed: () {
            //     // Navigasi ke halaman login saat tombol ditekan
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => LoginPage()),
            //     );
            //   },
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Color(0xFF0961F5),
            //   ),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Text(
            //         "Sign in with your account",
            //         style: TextStyle(
            //           fontFamily: 'Mulish',
            //           fontSize: 16,
            //           fontWeight: FontWeight.w800,
            //           color: Colors.white,
            //           letterSpacing: 0.2,
            //         ),
            //       ),
            //       SizedBox(width: 10),
            //       Icon(Icons.arrow_forward, color: Colors.white),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
