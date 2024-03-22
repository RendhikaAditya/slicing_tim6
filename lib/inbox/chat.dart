import 'package:flutter/material.dart';
import 'package:slicing_tim6/inbox/inbox.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // List data berisi nama, pesan, nomor, dan waktu untuk setiap item
  List<Map<String, String>> chatData = [
    {'name': 'Alice', 'message': 'Hi there!', 'number': '03', 'time': '10:00'},
    {'name': 'Bob', 'message': 'How are you?', 'number': '02', 'time': '11:30'},
    {'name': 'Charlie', 'message': 'Nice to meet you!', 'number': '05', 'time': '1:45'},
    {'name': 'Diana', 'message': 'What\'s up?', 'number': '02', 'time': '3:20'},
    {'name': 'Eva', 'message': 'Hello!', 'number': '10', 'time': '5:10'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatData.length,
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
                          chatData[index]['name']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Jost',
                            color: Color(0xFF202244),
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          chatData[index]['message']!,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            chatData[index]['number']!,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 4.0), // Spasi antara lingkaran biru dan waktu
                        Text(
                          chatData[index]['time']!,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Mulish',
                            color: Color(0xFF545454),
                          ),
                        ),
                      ],
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
