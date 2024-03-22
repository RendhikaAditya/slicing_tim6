import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/model/model_transaction.dart';
import 'package:slicing_tim6/widget/widget_transaction.dart';

import '../widget/pageBottomBar.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});
  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Transaction',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan kode fungsi pencarian di sini
              // Misalnya: Navigator.push untuk menuju layar pencarian
            },
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: transactions.length,
          itemBuilder: (BuildContext context, int index) {
            Transaction transaction = transactions[index];
            return WidgetTransaction(
              urlImage: transaction.urlImage,
              txtCategori: transaction.txtCategori,
              txtTitle: transaction.txtTitle,
              txtStatus: transaction.txtStatus
            );
          },
        ),
      )
    );
  }
}
