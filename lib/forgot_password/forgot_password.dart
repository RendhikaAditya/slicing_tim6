import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        backgroundColor: Colors.grey[100],
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
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Konten di bagian atas
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                '',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            // Tombol di bagian bawah
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Select which contact details should we use to Reset Your Password",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                                width: 1,
                              )
                            ),
                            child: Icon(
                              Icons.mail_outline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Via Email",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "priscilla.frank26@gmail.com",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 1,
                                )
                            ),
                            child: Icon(
                              Icons.mail_outline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Via Email",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "priscilla.frank26@gmail.com",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  CustomButton(
                    text: 'Continue',
                    onPressed: () {
                      // Aksi yang ingin dilakukan ketika tombol ditekan
                    },
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
