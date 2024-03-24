import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/model_course.dart';
import '../widget/horizontal_list_popular_course_home.dart';
import '../widget/widget_course_completed.dart';
import '../widget/widget_course_home.dart';


class PopularCoursePage extends StatefulWidget {

  @override
  State<PopularCoursePage> createState() => _PopularCoursePageState();
}

class _PopularCoursePageState extends State<PopularCoursePage> {
  List<String> categories = [
    '3D Design',
    'Arts & Humanities',
    'Graphic Design',
    'Programmer'
  ];
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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan kode fungsi pencarian di sini
              // Misalnya: Navigator.push untuk menuju layar pencarian
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            flex: 1,
              child: HorizontalListPopularCourse(categories: categories),
          ),
          SizedBox(height: 10,),
          Expanded(
            flex: 15,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: courses.length,
                itemBuilder: (BuildContext context, int index) {
                  Course course = courses[index];
                  return WidgetCourseCompleted(
                    title: course.txtTitle,
                    imagePath: course.urlImage,
                    rating: course.txtRating,
                    subtitle: course.txtCategori,
                    duration: course.txtDuration,
                  );
                },
              ),
          ),
        ],
      ),
    );
  }
}
