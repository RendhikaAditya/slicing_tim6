import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetCall extends StatelessWidget {
  final String image;
  final String name;
  final String panggilan;

  const WidgetCall({
    required this.image,
    required this.name,
    required this.panggilan,
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
                CircleAvatar(
                  backgroundImage: NetworkImage(image),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontFamily: 'Jost',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        panggilan,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Mulish',
                          fontSize: 13.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
               SizedBox(
  width: 22.0,
  height: 22.0,
  child: Image.asset(
    'assets/images/icontlp.png',
    fit: BoxFit.cover,
  ),
),

              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 0.5,
          indent: 24,
          endIndent: 24,
        ),
      ],
    );
  }
}
