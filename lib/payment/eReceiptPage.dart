import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/generated/assets.dart';

import '../model/model_course.dart';

class EReceiptPage extends StatefulWidget {
  final Course course;

  const EReceiptPage({Key? key, required this.course}) : super(key: key);

  @override
  State<EReceiptPage> createState() => _EReceiptPageState();
}

class _EReceiptPageState extends State<EReceiptPage> {
  @override
  Widget build(BuildContext context) {
    final Course course = widget.course;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E-Receipt',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.grey[100],
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.menu), // Icon burger menu
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.share), // Icon share
                  title: Text('Share'),
                ),
                value: 'Share',
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.file_download), // Icon download
                  title: Text('Download'),
                ),
                value: 'Download',
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(Icons.print), // Icon print
                  title: Text('Print'),
                ),
                value: 'Print',
              ),
            ],
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[100],
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(Assets.imagesIcReceipt,width: 80,),
            SizedBox(height: 20,),
            Image.asset(Assets.imagesIcBarcode, height: 100,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "Name",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                    "Rendhika Aditya",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email Id",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Aditya0909.a3@gmail.com",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Course",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${course.txtTitle}",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${course.txtCategori}",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transaction Id",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "SK3422141245",
                      style: TextStyle(
                        fontFamily: 'Jost',
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.copy,size: 12,)
                  ],
                )

              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "\u0024${course.txtPrice}",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Des 20, 2024/ 20:47",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status",
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.green
                  ),
                  child: Text(
                    "Paid",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Jost',
                      fontSize: 12,
                    ),

                  ),
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
