import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/inbox/call.dart';
import 'package:slicing_tim6/inbox/chat.dart';

class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);
  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F9FF),
        title: Text(
          'Inbox',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Icon search
            onPressed: () {
              // Aksi yang dilakukan ketika ikon search ditekan
            },
          ),
        ],
      ),
      backgroundColor: Color(0xFFF5F9FF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 10),
                TabBar(
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.green[700],
                  ),
                  dividerColor: Color(0xFFF5F9FF),
                  tabs: [
                    Tab(
                      text: 'Chat',
                    ),
                    Tab(
                      text: 'Call',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ChatPage(),
                CallPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
