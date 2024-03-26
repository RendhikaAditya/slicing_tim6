import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/iconWithText.dart';
import 'package:slicing_tim6/widget/widget_review.dart';

import '../widget/custom_button.dart';
import '../widget/custom_extended_text.dart';
import '../widget/widget_mentor.dart';
import '../widget/widget_mentor_only.dart';

class About extends StatelessWidget {
  final String kelas;

  About({required this.kelas});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 12,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Graphic Design now a popular profession graphic design by off your carrer about tantas regiones barbarorum pedibus obiitGraphic Design n a popular profession l Cur tantas regiones barbarorum pedibus obiit, \n\nmaria transmi Et ne nimium beatus est Addidisti ad extremum etiam',
                  ),
                  TextSpan(
                    text: ' Read More',
                    style: TextStyle(
                      color: Colors.blue, // Ubah warna teks untuk variabel ini
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Instructor",
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          WidgetMentorOnly(imageUrl: "https://randomuser.me/api/portraits/men/75.jpg", title: "Agus Supratman", time: "$kelas"),
          SizedBox(height: 10,),
          Text(
            "What You'll Get",
            style: TextStyle(
              fontFamily: 'Jost',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10,),
          IconWithText(iconData: Icons.book_outlined, text: "25 Leason"),
          SizedBox(height: 10,),
          IconWithText(iconData: Icons.phone_android, text: "Access Mobile, Desktop & Tv"),
          SizedBox(height: 10,),
          IconWithText(iconData: Icons.bar_chart_outlined, text: "Beginer Level"),
          SizedBox(height: 10,),
          IconWithText(iconData: Icons.cloud_done_outlined, text: "Audio Book"),
          SizedBox(height: 10,),
          IconWithText(iconData: Icons.accessible_forward, text: "Lifetime Access"),
          SizedBox(height: 10,),
          IconWithText(iconData: Icons.bookmark_added_outlined, text: "Certificate Of Completion"),
          SizedBox(height: 20,),
          Stack(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  "Review",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Jost',
                  ),
                  textAlign: TextAlign.start,
                )
              ]),
              Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: (){
                    },
                    child: Text(
                      "SEE ALL >",
                      style: TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.blue),
                    ),
                  )),
            ],
          ),
          SizedBox(height: 10,),
          WidgetReview(imageUrl: "https://randomuser.me/api/portraits/med/men/18.jpg", title: "Martin Sunarjo", time: "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo"),
          SizedBox(height: 10,),
          WidgetReview(imageUrl: "https://randomuser.me/api/portraits/med/men/12.jpg", title: "Martin Sunarjo", time: "The Course is Very Good dolor sit amet, consect tur adipiscing elit. Naturales divitias dixit parab les esse, quod parvo"),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
