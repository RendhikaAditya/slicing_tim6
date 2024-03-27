import 'package:flutter/material.dart';
import 'package:slicing_tim6/Mentor/course.dart';
import 'package:slicing_tim6/Mentor/rating.dart';
import 'package:slicing_tim6/Mentor/widgetTopMentorProfil.dart';
import 'package:slicing_tim6/model/model_mentor.dart';

class DetailMentorPage extends StatefulWidget {
  final ModelMentor mentor;

  DetailMentorPage({required this.mentor});

  @override
  _DetailMentorPageState createState() => _DetailMentorPageState();
}

class _DetailMentorPageState extends State<DetailMentorPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF5F9FF),
        ),
        body: Column(
          children: [
            MentorProfil(mentor: widget.mentor),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Sed quanta s alias nunc tantum possitne tanta Nec vero sum nescius esse utilitatem in historia non modo voluptatem.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 10),
                    TabBar(
                      labelColor: Colors.grey[800],
                      unselectedLabelColor: Colors.grey[500],
                      indicatorColor: Colors.grey[200],
                      tabs: [
                        Tab(text: 'Course'),
                        Tab(text: 'Rating'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          ListView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            children: [
                              SizedBox(height: 10),
                              CourseMentor(
                                urlImage:
                                    'https://s3.amazonaws.com/coursesity-blog/2021/06/3D-ANIMATION-_App_Classes.png',
                                txtCategori: '3D Design',
                                txtTitle: '3D Design Advance',
                                txtPrice: '20',
                                txtRating: '4.5',
                                txtStudent: '1541',
                              ),
                              SizedBox(height: 10),
                              CourseMentor(
                                urlImage:
                                    'https://www.classcentral.com/report/wp-content/uploads/2022/04/BCG-Web-Development-NEW-Banner.png',
                                txtCategori: 'Web Development',
                                txtTitle: 'Web Development Basics',
                                txtPrice: '15',
                                txtRating: '4.2',
                                txtStudent: '2000',
                              ),
                            ],
                          ),
                          ListView(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            children: [
                              SizedBox(height: 8),
                              Rating(
                                imageUrl:
                                    "https://randomuser.me/api/portraits/med/men/18.jpg",
                                title: "Martin Sunarjo",
                                time:
                                    "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo",
                              ),
                              SizedBox(height: 8),
                              Rating(
                                imageUrl:
                                    "https://randomuser.me/api/portraits/med/men/12.jpg",
                                title: "Martin Sunarjo",
                                time:
                                    "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
