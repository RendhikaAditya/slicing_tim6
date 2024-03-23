import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PopularCoursePage extends StatefulWidget {

  @override
  State<PopularCoursePage> createState() => _PopularCoursePageState();
}

class _PopularCoursePageState extends State<PopularCoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Popular Course',
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
