import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
      body: Center(child: Text("s"),),
    );
  }
}
