import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:slicing_tim6/widget/pageBottomBar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d("asd");
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini Home'),
      ),
      body: Center(
        child: Text('isi'),
      )
    );
  }
}