import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/fill_profile/set_fingerprint.dart';
import 'package:slicing_tim6/forgot_password/change_password.dart';

import '../widget/custom_button.dart';
import '../widget/password_text_field.dart';
import '../widget/pin_input.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({super.key});

  @override
  State<CreatePin> createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
  List<String> pin = ["", "", "", ""];

  TextEditingController pinController1 = TextEditingController();
  TextEditingController pinController2 = TextEditingController();
  TextEditingController pinController3 = TextEditingController();
  TextEditingController pinController4 = TextEditingController();

  int _countdown = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_countdown == 0) {
        _timer.cancel();
      } else {
        setState(() {
          _countdown--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            Text(
              'Create New Pin',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                      "Add a Pin Number to Make Your Account more Secure",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(10),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildPinInput(context, pinController1, true),
                          SizedBox(width: 8),
                          buildPinInput(context, pinController2, true),
                          SizedBox(width: 8),
                          buildPinInput(context, pinController3, true),
                          SizedBox(width: 8),
                          buildPinInput(context, pinController4, true),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SetFingerprint()));
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
