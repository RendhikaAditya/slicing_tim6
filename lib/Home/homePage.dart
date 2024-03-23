// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/web.dart';
import 'package:slicing_tim6/model/model_mentor.dart';
import 'package:slicing_tim6/widget/horizontal_list_categori_home.dart';
import 'package:slicing_tim6/widget/horizontal_list_popular_course_home.dart';
import 'package:slicing_tim6/widget/mentor_widget_home.dart';
import 'package:slicing_tim6/widget/pageBottomBar.dart';
import 'package:slicing_tim6/widget/search_with_filter.dart';
import 'package:slicing_tim6/widget/widget_course_home.dart';

import '../model/model_course.dart';
import '../widget/image_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    '3D Design',
    'Arts & Humanities',
    'Graphic Design',
    'Programmer'
  ];
  final List<String> imageList = [
    "assets/images/sld_1.png",
    "assets/images/sld_2.png",
    "assets/images/sld_3.png",
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi, Rendhika Aditya",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "What Would you like to learn Today? \nSearch Below.",
                                  style: TextStyle(color: Colors.grey[500]),
                                )
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 2,
                              ),
                            ),
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SearchWithFilter(hintText: "Search For..."),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Image.asset("assets/images/sld_1.png"),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: _buildPageIndicator(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'Jost',
                                ),
                                textAlign: TextAlign.start,
                              )
                            ]),
                        Positioned(
                            right: 0,
                            child: GestureDetector(
                              child: Text(
                                "SEE ALL >",
                                style: TextStyle(
                                    fontFamily: 'Jost',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.blue),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              HorizontalListCategoriHome(categories: categories),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Popular Courses",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Jost',
                        ),
                        textAlign: TextAlign.start,
                      )
                    ]),
                    Positioned(
                        right: 0,
                        child: GestureDetector(
                          child: Text(
                            "SEE ALL >",
                            style: TextStyle(
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.blue),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              HorizontalListPopularCourse(categories: categories),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: courses.length,
                  itemBuilder: (BuildContext context, int index) {
                    Course course = courses[index];
                    return WidgetCourseHome(
                      urlImage: course.urlImage,
                      txtCategori: course.txtCategori,
                      txtTitle: course.txtTitle,
                      txtPrice: course.txtPrice,
                      txtRating: course.txtRating,
                      txtStudent: course.txtStudent,
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Top Mentor",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: 'Jost',
                        ),
                        textAlign: TextAlign.start,
                      )
                    ]),
                    Positioned(
                        right: 0,
                        child: GestureDetector(
                          child: Text(
                            "SEE ALL >",
                            style: TextStyle(
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.blue),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              FutureBuilder<List<ModelMentor>>(
                future: fetchUsers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else {
                    return SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return MentorWidgetHome(
                            namaUser: snapshot.data![index].name,
                            imageUrl: snapshot.data![index].imageUrl,
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          )),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < imageList.length; i++) {
      indicators.add(i == _currentIndex ? _indicator(true) : _indicator(false));
    }
    return indicators;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      height: 8,
      width: isActive ? 24 : 8,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
