import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/pageBottomBar.dart';
import '../payment/paymentPage.dart';

class CustomDialog {
  static Future<void> showCustomDialog({
    required BuildContext navigatorContext,
    required String image,
    required String title,
    required String deskripsi,
    bool visible = true, // Parameter tidak wajib dengan nilai default true
    VoidCallback? navigator, // Parameter navigator yang tidak wajib
  }) async {
    print(visible);
    return showDialog<void>(
      context: navigatorContext,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  image,
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  deskripsi,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Visibility(
                  visible: visible,
                  child: CircularProgressIndicator(),
                ), // Indikator loading
                SizedBox(height: 20),
                Visibility(
                  visible: !visible,
                  child: CustomButton(
                    onPressed: navigator, // Gunakan parameter navigator di sini
                    text: "E-Receipt",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
