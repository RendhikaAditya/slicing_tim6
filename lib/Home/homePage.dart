import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/bottomNavBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'), // Judul AppBar
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            'Home Page',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
     // Menambahkan BottomNavBar ke dalam bottomNavigationBar
    );
  }
}
