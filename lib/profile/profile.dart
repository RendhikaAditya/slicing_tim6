import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/pageBottomBar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini Profile'),
      ),
      body: Center(
        child: Text('isi'),
      )
    );
  }
}
