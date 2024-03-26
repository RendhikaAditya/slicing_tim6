import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_tim6/Course/about.dart';
import 'package:slicing_tim6/Course/curriculcum.dart';
import 'package:slicing_tim6/model/model_course.dart';
import 'package:slicing_tim6/widget/custom_button.dart';

import '../myCourse/myCourseCompleted.dart';
import '../myCourse/myCourseOngoing.dart';

class DetailCoursePage extends StatefulWidget {
  final Course course;

  const DetailCoursePage({Key? key, required this.course}) : super(key: key);

  @override
  State<DetailCoursePage> createState() => _DetailCoursePageState();
}

class _DetailCoursePageState extends State<DetailCoursePage> with SingleTickerProviderStateMixin {
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
    final Course course = widget.course;
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Stack(
            children:[
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 200.0,
                    ),
                    child: Image.network(
                      course.urlImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top:30,
                      left:20,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      )
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.only(top: 50,left: 16, right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${course.txtCategori}",
                                    style: TextStyle(
                                        fontFamily: 'Jost',
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        decoration: TextDecoration.none
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow), // Icon di kiri teks
                                      SizedBox(width: 3), // Jarak antara icon dan teks
                                      Text("4.2", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal, decoration: TextDecoration.none)), // Teks
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "${course.txtTitle}",
                                style: TextStyle(
                                    fontFamily: 'Jost',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    decoration: TextDecoration.none
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.videocam_outlined, color: Colors.black), // Icon di kiri teks
                                      SizedBox(width: 3), // Jarak antara icon dan teks
                                      Text("${course.txtTotalTask} Class | ", style: TextStyle(fontFamily: 'Jost', color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal, decoration: TextDecoration.none)), // Teks
                                      SizedBox(width: 3,),
                                      Icon(Icons.access_time_rounded, color: Colors.black), // Icon di kiri teks
                                      SizedBox(width: 3), // Jarak antara icon dan teks
                                      Text("${course.txtDuration}", style: TextStyle(fontFamily: 'Jost', color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal, decoration: TextDecoration.none)), // Teks
                                    ],
                                  ),
                                  Text(
                                    "\u0024${course.txtPrice}",
                                    style: TextStyle(
                                        fontFamily: 'Jost',
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                        decoration: TextDecoration.none
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            child: Image.asset("assets/images/ic_video.png")
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TabBar(
                          controller: _tabController,
                          labelColor: Colors.grey[800],
                          unselectedLabelColor: Colors.grey[500],
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey[200],
                          ),
                          dividerColor: Color(0xFFF5F9FF),
                          tabs: [
                            Tab(
                              text: 'About',
                            ),
                            Tab(
                              text: 'Curriculcum',
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          About(kelas: course.txtCategori,),
                          Curriculcum(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: 10,
                  right: 10,
                  bottom: 10,
                  child: CustomButton(onPressed:(){},text: "Enroll Course - \u0024${course.txtPrice}",)
              ),
            ]
        ),
      ),
    );
  }
}
