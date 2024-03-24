import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SecurityPage extends StatefulWidget {

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Security',
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
