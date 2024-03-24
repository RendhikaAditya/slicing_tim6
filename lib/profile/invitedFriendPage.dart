import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InvitedFirendPage extends StatefulWidget {

  @override
  State<InvitedFirendPage> createState() => _InvitedFirendPageState();
}

class _InvitedFirendPageState extends State<InvitedFirendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'InvitedFirend',
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
