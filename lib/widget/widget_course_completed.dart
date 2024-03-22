import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class WidgetCourseCompleted extends StatelessWidget {
  final String subtitle;
  final String title;
  final String rating;
  final String imagePath;
  final String duration;

  const WidgetCourseCompleted({
    required this.subtitle,
    required this.title,
    required this.rating,
    required this.imagePath,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(width: 10),
                Expanded( // Agar judul otomatis ke bawah jika layar penuh
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 12,
                          color: Colors.orange
                        ),
                      ),
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2, // Atur maksimum 2 baris
                        overflow: TextOverflow.ellipsis, // Tambahkan elipsis jika melebihi 2 baris
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 12),
                          Text(
                            '$rating  |  $duration',
                            style: TextStyle(
                              fontFamily: 'Jost',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            child: Image.asset(
              'assets/images/iconagree.png',
              width: 28,
              height: 28,
            ),
          ),
          Positioned(
            right: 20,
            bottom: 10,
            child: Text(
              "View Certificate",
              style: TextStyle(
                fontFamily: 'Jost',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF202244),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
