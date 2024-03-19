import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/custom_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(width: 8.0), // Atur jarak antara IconButton dan teks
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Konten di bagian atas
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Isi Halaman Utama',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          // Tombol di bagian bawah
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            child: CustomButton(
              text: 'Continue',
              onPressed: () {
                // Aksi yang ingin dilakukan ketika tombol ditekan
              },
            ),
          ),
        ],
      ),
    );
  }
}
