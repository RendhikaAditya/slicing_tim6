import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/pageBottomBar.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});
  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini My Inbox'),
      ),
      body: Center(
        child: Text('isi'),
      )
    );
  }
}
