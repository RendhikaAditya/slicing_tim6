import 'package:flutter/material.dart';
import 'package:slicing_tim6/Course/curriculcum.dart';
import 'package:slicing_tim6/myCourse/curriculumCompleted.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/search_only.dart';

class CompletedLesson extends StatefulWidget {
  const CompletedLesson({Key? key}) : super(key: key);
  @override
  State<CompletedLesson> createState() => _CompletedLessonState();
}

class _CompletedLessonState extends State<CompletedLesson>
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchOnly(hintText: "3D Design Illustration"),
                SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: CurriculcumCompleted(),
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: "Start Course Again",
                  onPressed: () {
                    // Tambahkan fungsi untuk men-download sertifikat
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Curriculum List', // Ganti dengan teks yang sesuai
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Ganti dengan jumlah item yang sesuai
              itemBuilder: (context, index) {
                // Ganti ini dengan widget yang sesuai dengan daftar kurikulum
                return ListTile(
                  title: Text('Curriculum $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
