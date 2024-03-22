import 'package:flutter/material.dart';
import 'package:slicing_tim6/inbox/inbox.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  // List data berisi nama dan pesan untuk setiap item
  List<Map<String, String>> callData = [
    {'name': 'Alice', 'message': 'Hi there!'},
    {'name': 'Bob', 'message': 'How are you?'},
    {'name': 'Charlie', 'message': 'Nice to meet you!'},
    {'name': 'Diana', 'message': 'What\'s up?'},
    {'name': 'Eva', 'message': 'Hello!'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: callData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/imageprofile.png'),
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          callData[index]['name']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Jost',
                            color: Color(0xFF202244),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          callData[index]['message']!,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Mulish',
                            color: Color(0xFF545454),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.phone, color: Colors.blue),
                      onPressed: () {
                        // Aksi ketika tombol telpon ditekan
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}
