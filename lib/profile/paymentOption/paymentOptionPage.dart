import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PaymentOptionPage extends StatefulWidget {

  @override
  State<PaymentOptionPage> createState() => _PaymentOptionPageState();
}

class _PaymentOptionPageState extends State<PaymentOptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Option',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(child: Text("s"),),
    );
  }
}
