import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_tim6/model/model_course.dart';
import 'package:slicing_tim6/myCourse/myCourseOngoing.dart';
import 'package:slicing_tim6/myCourse/myCourseCompleted.dart';
import 'package:slicing_tim6/widget/search_only.dart';
import 'package:slicing_tim6/widget/search_with_filter.dart';
import 'package:slicing_tim6/widget/widget_course_completed.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({Key? key}) : super(key: key);
  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF),
        title: Text(
          'My Courses',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SearchOnly(hintText: "Search For..."),
                SizedBox(height: 10,),
                TabBar(
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.green[700],
                  ),
                  dividerColor: Color(0xFFF5F9FF),
                  tabs: [
                    Tab(
                      text: 'Completed',
                    ),
                    Tab(
                      text: 'Ongoing',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                MyCourseCompleted(),
                MyCourseOngoing(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
