import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myCourse.dart'; // Import file MyCourse

class MyCourseOngoing extends StatefulWidget {
  const MyCourseOngoing({Key? key}) : super(key: key);
  @override
  State<MyCourseOngoing> createState() => _MyCourseOngoingState();
}

class _MyCourseOngoingState extends State<MyCourseOngoing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF),
        title: Text(
          'My Courses',
          style: TextStyle(
            fontFamily: 'Jost', // Mengubah font
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Action when back button is pressed
            Navigator.pop(context); // Navigate back to MyCourse page
          },
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for ...',
                          suffixIcon: Icon(Icons.search, color: Colors.blue),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action when Completed button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyCourse()),
                      ); // Navigate back to MyCourse page
                    },
                    child: Text('Completed', style: TextStyle(color: Colors.black)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action when Ongoing button is pressed
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF167F71), // Set background color to #167F71
                    ),
                    child: Text('Ongoing', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Content Columns
              Column(
                children: [
                  _buildContent(
                    "UI/UX Design",
                    "Intro to UI/UX Design",
                    "4.4 | 3 Hrs 06 Mins",
                    'assets/images/imageblack.png',
                    0.5, // Contoh nilai progress
                  ),
                  _buildContent(
                    "Web Development",
                    "Wordpress website Dev..",
                    "3.9 | 1 Hrs 58 Mins",
                    'assets/images/imageblack.png',
                    0.8, // Contoh nilai progress
                  ),
                  _buildContent(
                    "UI/UX Design",
                    "3D Blender and UI/UX",
                    "3.6 | 2 Hrs 46 Mins",
                    'assets/images/imageblack.png',
                    0.3, // Contoh nilai progress
                  ),
                  _buildContent(
                    "Web Development",
                    "Web Developer conce..",
                    "4.2 | 2 Hrs 36 Mins",
                    'assets/images/imageblack.png',
                    0.6, // Contoh nilai progress
                  ),
                  _buildContent(
                    "Mobile Development",
                    "Mobile Developer  Concep..",
                    "4.7 | 3 Hrs 36 Mins",
                    'assets/images/imageblack.png',
                    0.9, // Contoh nilai progress
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(
    String subtitle,
    String title,
    String rating,
    String imagePath,
    double progressValue, // Ubah tipe parameter
  ) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      child: SizedBox(
        height: 134, // Set tinggi kartu
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imagePath,
                width: 130, // Set lebar gambar
                height: double.infinity, // Set tinggi gambar ke tinggi maksimum
                fit: BoxFit.fill, // Mengisi gambar ke seluruh ruang yang tersedia
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'Mulish', // Mengubah font
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFF6B00), // Ubah warna
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Jost', // Mengubah font
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF202244), // Ubah warna
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 5),
                        Text(
                          '$rating',
                          style: TextStyle(
                            fontFamily: 'Mulish', // Mengubah font
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF202244), // Ubah warna
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    // Menambahkan baris kemajuan (progress bar)
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: progressValue, // Nilai progress
                            backgroundColor: Colors.grey[300], // Warna latar belakang
                            valueColor: AlwaysStoppedAnimation<Color>(
                              progressValue >= 0.5 ? Colors.green : Colors.red, // Warna sesuai dengan nilai progress
                            ),
                          ),
                        ),
                        SizedBox(width: 8), // Spacer
                        Text(
                          '${(progressValue * 100).toInt()}%', // Menampilkan persentase
                          style: TextStyle(
                            fontFamily: 'Mulish', // Mengubah font
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
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
    );
  }
}

