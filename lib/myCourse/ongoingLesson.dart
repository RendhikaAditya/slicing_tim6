import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/Course/curriculcum.dart';
import 'package:slicing_tim6/myCourse/curriculumCompleted.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/search_only.dart';

class OngoingLesson extends StatefulWidget {
  const OngoingLesson({Key? key}) : super(key: key);

  @override
  State<OngoingLesson> createState() => _OngoingLessonState();
}

class _OngoingLessonState extends State<OngoingLesson>
    with SingleTickerProviderStateMixin {
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
    return WillPopScope(
      onWillPop: () async {
        // Back button pressed
        return true; // Returning true allows the user to pop the screen
      },
      child: Scaffold(
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
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SearchOnly(
                hintText: "Search for ...",
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(height: 10),

                      // CurriculcumCompleted(), // Curriculum is placed here
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Scrollbar(
                                  child: CurriculcumCompleted(),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: CustomButton(
                          text: "Continue Courses",
                          onPressed: () {
                            // Add onPressed action for the custom button if needed
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
