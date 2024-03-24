import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TermConditionPage extends StatefulWidget {

  @override
  State<TermConditionPage> createState() => _TermConditionPageState();
}

class _TermConditionPageState extends State<TermConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TermCondition',
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
