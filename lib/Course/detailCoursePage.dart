import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/model/model_course.dart';

class DetailCoursePage extends StatefulWidget {
  final Course course;

  const DetailCoursePage({Key? key, required this.course}) : super(key: key);

  @override
  State<DetailCoursePage> createState() => _DetailCoursePageState();
}

class _DetailCoursePageState extends State<DetailCoursePage> {
  @override
  Widget build(BuildContext context) {
    final Course course = widget.course;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${course.txtTitle}',
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
