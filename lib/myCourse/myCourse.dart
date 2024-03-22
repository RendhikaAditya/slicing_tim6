import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/myCourse/myCourseOngoing.dart'; // Import file MyCourseOngoing

class MyCourse extends StatefulWidget {
  const MyCourse({Key? key}) : super(key: key);
  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Action when back button is pressed
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
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF167F71)), // Ubah warna tombol Completed
                    ),
                    child: Text('Completed', style: TextStyle(color: Colors.white)), // Ubah teks menjadi putih
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action when Ongoing button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyCourseOngoing()),
                      );
                    },
                    child: Text('Ongoing', style: TextStyle(color: Colors.black)), // Ubah teks menjadi hitam
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
                    "Graphic Design",
                    "Graphic Design Advanced",
                    "4.2 | 2 Hrs 36 Mins",
                    'assets/images/imageblack.png',
                    "View Certificate",
                    'assets/images/iconagree.png', // tambahkan gambar
                  ),
                  _buildContent(
                    "Graphic Design",
                    "Advance Diploma in Gra..",
                    "4.7 | 3 Hrs 28 Mins",
                    'assets/images/imageblack.png',
                    "View Certificate",
                    'assets/images/iconagree.png', // tambahkan gambar
                  ),
                  _buildContent(
                    "Digital Marketing",
                    "Setup your Graphic Des..",
                    "4.2 | 4 Hrs 05 Mins",
                    'assets/images/imageblack.png',
                    "View Certificate",
                    'assets/images/iconagree.png', // tambahkan gambar
                  ),
                  _buildContent(
                    "Web Development",
                    "Web Developer Conce..",
                    "4.2 | 2 Hrs 36 Mins",
                    'assets/images/imageblack.png',
                    "View Certificate",
                    'assets/images/iconagree.png', // tambahkan gambar
                  ),
                  _buildContent(
                    "Mobile Development",
                    "Mobile Developer  Concep..",
                    "4.7 | 3 Hrs 36 Mins",
                    'assets/images/imageblack.png',
                    "View Certificate",
                    'assets/images/iconagree.png', // tambahkan gambar
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
    String sertifikat,
    String iconPath, // tambahkan parameter untuk path gambar
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
                    Align(
                      alignment: Alignment.centerRight, // Rata kanan
                      child: Text(
                        sertifikat,
                        style: TextStyle(
                          fontFamily: 'Jost', // Mengubah font
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF202244), // Ubah warna
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10), // Beri jarak antara teks dan gambar
              Image.asset(
                iconPath,
                width: 28, // Set lebar gambar
                height: 28, // Set tinggi gambar
              ),
            ],
          ),
        ),
      ),
    );
  }
}
