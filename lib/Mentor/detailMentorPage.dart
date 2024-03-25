import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/model/model_mentor.dart';

class DetailMentorPage extends StatefulWidget {
  final ModelMentor mentor;

  DetailMentorPage({required this.mentor});

  @override
  State<DetailMentorPage> createState() => _DetailMentorPageState();
}

class _DetailMentorPageState extends State<DetailMentorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.mentor.name,
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
