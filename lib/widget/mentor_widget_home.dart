import 'package:flutter/material.dart';

class MentorWidgetHome extends StatelessWidget {
  final String namaUser;
  final String imageUrl;

  MentorWidgetHome({required this.namaUser, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80, // Lebar widget
      margin: EdgeInsets.symmetric(horizontal: 5.0), // Jarak antar widget
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          SizedBox(height: 5.0), // Jarak antara gambar dan teks nama
          Text(
            namaUser,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
