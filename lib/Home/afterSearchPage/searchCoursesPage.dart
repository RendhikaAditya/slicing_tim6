import 'package:flutter/cupertino.dart';

import '../../model/model_course.dart';
import '../../widget/widget_course_completed.dart';


class SearchCoursesPage extends StatefulWidget {
  const SearchCoursesPage({super.key});

  @override
  State<SearchCoursesPage> createState() => _SearchCoursesPageState();
}

class _SearchCoursesPageState extends State<SearchCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: double.infinity,
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
      );
  }
}
