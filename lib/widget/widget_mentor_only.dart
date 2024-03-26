import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetMentorOnly extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;

  WidgetMentorOnly({
    required this.imageUrl,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Container(
            // color: Colors.white, // Ubah latar belakang menjadi putih
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        time,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontFamily: 'Mulish',
                          fontSize: 13.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    Icon(Icons.chat_outlined, color: Colors.black)
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.cyan[100],
          indent: 24,
          endIndent: 24,
        ),
      ],
    );
  }
}
