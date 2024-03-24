import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddNewCardPage extends StatefulWidget {

  @override
  State<AddNewCardPage> createState() => _AddNewCardPageState();
}

class _AddNewCardPageState extends State<AddNewCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New Card',
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
