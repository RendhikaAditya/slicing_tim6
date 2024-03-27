import 'package:flutter/material.dart';
import 'package:slicing_tim6/model/model_mentor.dart';

class MentorProfil extends StatelessWidget {
  final ModelMentor mentor;

  MentorProfil({required this.mentor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.network(
              mentor.imageUrl,
              width: 200,
              height: 200,
              fit: BoxFit
                  .cover, // Optional, untuk memastikan gambar terisi penuh dalam lingkaran
            ),
          ),
          SizedBox(height: 8),
          Text(
            mentor.name,
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 5),
          Text(
            mentor.kelas,
            style: TextStyle(
              fontFamily: 'Mulish',
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '26',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Courses',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '15800',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Students',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '8750',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Ratings',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
