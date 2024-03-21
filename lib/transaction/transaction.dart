import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/pageBottomBar.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});
  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini Transaction'),
      ),
      body: Center(
        child: Text('isi'),
      )
    );
  }
}
