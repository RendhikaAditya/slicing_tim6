import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/pageBottomBar.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({super.key});
  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini My Course'),
      ),
      body: Center(
        child: Text('isi'),
      )
    );
  }
}
