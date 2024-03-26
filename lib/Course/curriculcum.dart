import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/model/model_curriculcum.dart';
import 'package:slicing_tim6/widget/widget_curriculcum_item.dart';

import '../model/model_course.dart';
import '../widget/widget_course_completed.dart';

class Curriculcum extends StatefulWidget {
  const Curriculcum({super.key});

  @override
  State<Curriculcum> createState() => _CurriculcumState();
}

class _CurriculcumState extends State<Curriculcum> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Section 01 - ',
                  ),
                  TextSpan(
                    text: 'Introducation',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks untuk variabel ini
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 340,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: sampleData.length,
                itemBuilder: (BuildContext context, int index) {
                  CurriculumItem curriculcum = sampleData[index];
                  return WidgetCurriculcumItem(
                    number: curriculcum.number,
                    title: curriculcum.title,
                    time: curriculcum.time,
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Section 02 - ',
                  ),
                  TextSpan(
                    text: 'Graphic design',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks untuk variabel ini
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: sampleData.length,
                itemBuilder: (BuildContext context, int index) {
                  CurriculumItem curriculcum = sampleData[index];
                  return WidgetCurriculcumItem(
                    number: curriculcum.number,
                    title: curriculcum.title,
                    time: curriculcum.time,
                  );
                },
              ),
            ),
          ]
        ),
      ),
    );
  }
}

// SizedBox(height: 10,),
// RichText(
// text: TextSpan(
// style: TextStyle(
// fontFamily: 'Jost',
// fontSize: 16,
// fontWeight: FontWeight.w600,
// color: Colors.black,
// ),
// children: [
// TextSpan(
// text: 'Section 01 - ',
// ),
// TextSpan(
// text: 'Introducation',
// style: TextStyle(
// color: Colors.blue, // Ubah warna teks untuk variabel ini
// ),
// )
// ],
// ),
// ),