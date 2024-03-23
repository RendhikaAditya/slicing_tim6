import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TopMentorPage extends StatefulWidget {

  @override
  State<TopMentorPage> createState() => _TopMentorPageState();
}

class _TopMentorPageState extends State<TopMentorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Top Mentor',
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
