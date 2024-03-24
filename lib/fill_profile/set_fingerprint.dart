import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_tim6/forgot_password/otp_page.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/gray_custom_button.dart';
import 'package:slicing_tim6/widget/pageBottomBar.dart';

import '../widget/custom_dialog.dart';

class SetFingerprint extends StatefulWidget {
  const SetFingerprint({super.key});

  @override
  State<SetFingerprint> createState() => _SetFingerprintState();
}

class _SetFingerprintState extends State<SetFingerprint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            SizedBox(width: 8.0), // Atur jarak antara IconButton dan teks
            Text(
              'Set Your Fingerprint',
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
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Add a Fingerprint to Make your Account \nmore Secure",textAlign: TextAlign.center, style: TextStyle(fontSize: 14),),
                  SizedBox(height: 50,),
                  Image.asset('assets/images/ic_fingerprint.png'),
                  SizedBox(height: 100,),
                  Text("Please Put Your Finger on the Fingerprint \nScanner to get Started.",textAlign: TextAlign.center, style: TextStyle(fontSize: 14))

                ],
              )
            ),
            // Tombol di bagian bawah
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GrayCustomButton(
                      text: 'Skip',
                      onPressed: () {
                        // Your onPressed function for Button 1
                      },
                    ),
                  ),
                  SizedBox(width: 20), // Spacer between buttons
                  Expanded(
                    child: CustomButton(
                      text: 'Continue',
                      onPressed: () {
                        CustomDialog.showCustomDialog(
                          navigatorContext: context,
                          image: 'assets/images/image_dialog_fill_profil.png',
                          title: 'Congratulations',
                          deskripsi: 'Your Account is Ready to Use. You will be redirected to the Home Page in a Few Seconds.',
                          visible: true,
                        );
                        Future.delayed(Duration(seconds: 2), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PageBottomBar()), // Ganti dengan halaman yang sesuai
                          );
                        });
                      },
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
