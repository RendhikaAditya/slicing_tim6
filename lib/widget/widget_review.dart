import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetReview extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;

  WidgetReview({
    required this.imageUrl,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(CupertinoIcons.heart_fill, color: Colors.red,),
                        SizedBox(width: 5,),
                        Text("242", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, fontFamily: "Jost"),),
                        SizedBox(width: 10,),
                        Text("2 Weeks Agos", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, fontFamily: "Jost"),),

                      ],
                    )
                  ],
                ),
              ),
              SizedBox(width: 12),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white54,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Icon(Icons.star, color: Colors.yellow, size: 15,),
                        Text("4.5", style: TextStyle(fontSize: 12, fontFamily: "Jost"),),
                        SizedBox(width: 5,),
                      ],
                    )
                  ),
                ],
              ),
            ],
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
