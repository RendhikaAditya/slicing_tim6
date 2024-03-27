import 'package:flutter/material.dart';
import 'package:slicing_tim6/model/model_curriculcum.dart';
import 'package:slicing_tim6/widget/widget_curriculcum_item.dart';

class CurriculcumCompleted extends StatelessWidget {
  const CurriculcumCompleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
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
                    text: 'Introduction ',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks untuk variabel ini
                    ),
                  ),
                  TextSpan(
                    text: '25 Mins',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks untuk variabel ini
                      // textAlign: TextAlign.right, // Tidak perlu
                    ),
                  ),
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
                  CurriculumItem curriculum = sampleData[index];
                  return WidgetCurriculcumItem(
                    number: curriculum.number,
                    title: curriculum.title,
                    time: curriculum.time,
                  );
                },
              ),
            ),
            SizedBox(height: 20),
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
                    text: 'Graphic Design ',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks untuk variabel ini
                    ),
                  ),
                  TextSpan(
                    text: '55 Mins',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks untuk variabel ini
                      // textAlign: TextAlign.right, // Tidak perlu
                    ),
                  ),
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
                  CurriculumItem curriculum = sampleData[index];
                  return WidgetCurriculcumItem(
                    number: curriculum.number,
                    title: curriculum.title,
                    time: curriculum.time,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
