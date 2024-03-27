import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_tim6/profile/paymentOption/addNewCardPage.dart';
import 'package:slicing_tim6/widget/custom_dialog.dart';

import '../generated/assets.dart';
import '../model/model_course.dart';
import '../widget/custom_button.dart';
import '../widget/custom_radiobutton.dart';

class PaymentPage extends StatefulWidget {
  final Course course;

  const PaymentPage({Key? key, required this.course}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  @override
  Widget build(BuildContext context) {
    final Course course = widget.course;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Methods',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    minWidth: 50,
                    maxWidth: double.infinity,
                    minHeight: 50,
                    maxHeight: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15),),
                          child: Image.network(
                            course.urlImage,
                            fit: BoxFit.cover,
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${course.txtCategori}",
                            style: TextStyle(
                                fontFamily: 'Jost',
                                color: Colors.orange,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                decoration: TextDecoration.none
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "${course.txtTitle}",
                            style: TextStyle(
                                fontFamily: 'Jost',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Select The Payment Methods You Want to Use',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey
                  ),
                ),
                SizedBox(height: 10,),
                CustomRadioButton(
                  text: 'Paypal',
                  value: false, // or false
                  onChanged: (bool newValue) {
                    // Do something with the new value
                    print(newValue);
                  },
                  image: Image.network(
                    "https://cdn.icon-icons.com/icons2/2699/PNG/512/paypal_logo_icon_170865.png",
                    fit: BoxFit.fitWidth,
                    width: 60,
                    height: 20,
                  ),
                ),
                SizedBox(height: 10,),
                CustomRadioButton(
                  text: 'Google Pay',
                  value: false, // or false
                  onChanged: (bool newValue) {
                    // Do something with the new value
                    print(newValue);
                  },
                  image: Image.network(
                    "https://cdn1.iconfinder.com/data/icons/logos-brands-in-colors/436/Google_Pay_GPay_Logo-512.png",
                    fit: BoxFit.fitWidth,
                    width: 60,
                    height: 20,
                  ),
                ),
                SizedBox(height: 10,),
                CustomRadioButton(
                  text: 'Apple Pay',
                  value: false, // or false
                  onChanged: (bool newValue) {
                    // Do something with the new value
                    print(newValue);
                  },
                  image: Image.network(
                    "https://cdn.icon-icons.com/icons2/2648/PNG/512/finance_apple_pay_icon_160746.png",
                    fit: BoxFit.fitWidth,
                    width: 60,
                    height: 20,
                  ),
                ),
                SizedBox(height: 10,),
                CustomRadioButton(
                  text: '**** **** **21 2392',
                  value: true, // or false
                  onChanged: (bool newValue) {
                    // Do something with the new value
                    print(newValue);
                  },
                  image: Image.network(
                    "https://cdn.icon-icons.com/icons2/674/PNG/512/Visa_icon-icons.com_60549.png",
                    fit: BoxFit.fitWidth,
                    width: 60,
                    height: 20,
                  ),
                ),

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddNewCardPage()),
                    );
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                CustomButton(
                  onPressed:(){
                    CustomDialog.showCustomDialog(
                      navigatorContext: context,
                      image: Assets.imagesIcCongratulation,
                      title: 'Congratulations',
                      deskripsi: 'Your Payment is Successfully. Purchase a New Course',
                      visible: false,
                    );
                  },
                  text: "Enroll Course - \u0024${course.txtPrice}",)
              ],
            )
          ],
        ),
      ),
    );
  }
}
