import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/search_only.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF), // Ubah warna AppBar
        title: Text(
          'Search',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), // Memberikan ruang kiri kanan pada badan halaman
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SearchOnly(hintText: "Graphic Design"),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Searches',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'SEE ALL >',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF0961F5),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 5), // Tambahkan padding vertical di dalam ListView
                children: [
                  KalimatWithX(kalimat: '3D Design'),
                  KalimatWithX(kalimat: 'Graphic Design'),
                  KalimatWithX(kalimat: 'Programming'),
                  KalimatWithX(kalimat: 'SEO & Marketing'),
                  KalimatWithX(kalimat: 'Web Development'),
                  KalimatWithX(kalimat: 'Office Productivity'),
                  KalimatWithX(kalimat: 'Personal Development'),
                  KalimatWithX(kalimat: 'Finance & Accounting'),
                  KalimatWithX(kalimat: 'HR Management'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KalimatWithX extends StatelessWidget {
  final String kalimat;

  const KalimatWithX({required this.kalimat});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              kalimat,
              style: TextStyle(
                fontFamily: 'Mulish',
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: Color(0xFFA0A4AB),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          IconButton(
            onPressed: () {
              // Tambahkan logika yang diinginkan ketika tombol 'x' ditekan
            },
            icon: Icon(
              Icons.close,
              color: Color(0xFF472D2D),
              size: 11, // Ubah ukuran ikon 'x'
            ),
          ),
        ],
      ),
    );
  }
}
