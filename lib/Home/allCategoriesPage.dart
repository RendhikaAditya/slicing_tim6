import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/search_only.dart';
// import 'package:slicing_tim6/widget/all_categories.dart'; // Import ImageCategories widget di sini

class AllCategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Category',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xFFF5F9FF), // Ubah warna App Bar
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Container(
        color: Color(0xFFF5F9FF), // Ubah warna body
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchOnly(hintText: "Search For..."),
            SizedBox(height: 20), // Spacer untuk jarak antara widget SearchOnly dan AllCategories
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Membuat 4 kolom
                crossAxisSpacing: 10.0, // Spasi antar kolom
                mainAxisSpacing: 10.0, // Spasi antar baris
                children: List.generate(8, (index) {
                  return Image.asset(
                    'assets/images/categories/$index.png', // Ganti dengan nama file gambar Anda
                   
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
