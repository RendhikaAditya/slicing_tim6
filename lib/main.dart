import 'package:flutter/material.dart';
import 'package:slicing_tim6/fill_profile/fill_profile.dart';
import 'package:slicing_tim6/forgot_password/forgot_password.dart';
import 'package:slicing_tim6/splashscreen/launchingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ELearning App Tim 6',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FillProfile(),
      debugShowCheckedModeBanner: false,
    );
  }
}

