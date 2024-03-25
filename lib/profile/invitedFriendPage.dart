import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_tim6/widget/widget_friend.dart';
import 'package:slicing_tim6/widget/widget_mentor.dart';


class InvitedFirendPage extends StatefulWidget {

  @override
  State<InvitedFirendPage> createState() => _InvitedFirendPageState();
}

class _InvitedFirendPageState extends State<InvitedFirendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'InvitedFirend',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: Container(
        color: Colors.grey[100],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                children: [
                  WidgetFriend(namaUser: "Agus Supratman", imageUrl: "https://www.terrainhopperusa.com/wp-content/uploads/2019/01/avatar-man-300x300.png", section: "(+1) 702-897-7965", invited: false,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Divider()),
                  WidgetFriend(namaUser: "Yulianti", imageUrl: "https://img.freepik.com/premium-vector/hijab-woman-flat-illustration_1095608-6.jpg", section: "(+62) 812-1897-7965", invited: true,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Divider()),
                  WidgetFriend(namaUser: "Tri Husna Putra", imageUrl: "https://www.terrainhopperusa.com/wp-content/uploads/2019/01/avatar-man-300x300.png", section: "(+1) 723-997-7382", invited: true,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Divider()),
                  WidgetFriend(namaUser: "Roy R. McCraney", imageUrl: "https://www.terrainhopperusa.com/wp-content/uploads/2019/01/avatar-man-300x300.png", section: "(+1) 601-897-1714", invited: false,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Divider()),
                  WidgetFriend(namaUser: "Janice R. Norris", imageUrl: "https://www.terrainhopperusa.com/wp-content/uploads/2019/01/avatar-man-300x300.png", section: "(+1) 802-312-3206", invited: false,),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Share Invite Via',
                    style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset("assets/images/ic_fb.png"),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/ic_wa.png"),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/ic_twiter.png"),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/ic_fb.png"),

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
