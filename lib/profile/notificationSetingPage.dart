import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/custom_swichbutton.dart';


class NotificationSetingPage extends StatefulWidget {

  @override
  State<NotificationSetingPage> createState() => _NotificationSetingPageState();
}

class _NotificationSetingPageState extends State<NotificationSetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomSwitchButton(
              text: "Special Offer",
              initialValue: true,
              onChanged: (value){},
            ),
            SizedBox(height: 10,),
            CustomSwitchButton(
              text: "Sound",
              initialValue: false,
              onChanged: (value){},
            ),
            SizedBox(height: 10,),
            CustomSwitchButton(
              text: "Vibrate",
              initialValue: false,
              onChanged: (value){},
            ),
            SizedBox(height: 10,),
            CustomSwitchButton(
              text: "General Notivication",
              initialValue: true,
              onChanged: (value){},
            ),
            SizedBox(height: 10,),
            CustomSwitchButton(
              text: "Promo & Discount",
              initialValue: true,
              onChanged: (value){},
            ),
            SizedBox(height: 10,),
            CustomSwitchButton(
              text: "Payment Option",
              initialValue: false,
              onChanged: (value){},
            ),
            SizedBox(height: 10,),
            CustomSwitchButton(
              text: "New Service Available",
              initialValue: false,
              onChanged: (value){},
            ),
            SizedBox(height: 10,),
            CustomSwitchButton(
              text: "New Tips Available",
              initialValue: false,
              onChanged: (value){},
            ),
            SizedBox(height: 10,),
          ],
        )
      ),
    );
  }
}
