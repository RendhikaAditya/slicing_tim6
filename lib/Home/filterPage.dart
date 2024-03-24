import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/custom_checkbox.dart';


class FilterPage extends StatefulWidget {

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool valuePrice = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Filter',
          style: TextStyle(
            fontFamily: 'Jost',
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          GestureDetector(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                  "Clear",
                  style: TextStyle(fontFamily: 'Jost')
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SubCategories',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3D Design',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Web Development',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3D Animation',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Graphic Design',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'SEO & Marketin',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Arts & Humanities',
                    ),
                    SizedBox(height: 10,)
        
                  ],
                ),
              ),
              Text(
                'Levels',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'All Levels',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Beginers',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Intermediate',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Expert',
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
              Text(
                'Price',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: valuePrice,
                      onChanged: (newValue) {
                        // Do something with the new value
                        valuePrice = !valuePrice;
                        print('New value: $newValue');
                      },
                      text: 'Paid',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: !valuePrice,
                      onChanged: (newValue) {
                        valuePrice = !valuePrice;
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Free',
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
              Text(
                'Features',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'All Captian',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Quizzes',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Coding Excercise',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: 'Practice Test',
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
              Text(
                'Rating',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '4.5 & Up Above',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '4.0 & Up Above',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3.5 & Up Above',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3.0 & Up Above',
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
              Text(
                'Video Duration',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '0-2 Hours',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '3-6 Hours',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '7-16 Hours',
                    ),
                    SizedBox(height: 10,),
                    CustomCheckbox(
                      value: false,
                      onChanged: (newValue) {
                        // Do something with the new value
                        print('New value: $newValue');
                      },
                      text: '17+ Hours',
                    ),
                    SizedBox(height: 10,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              CustomButton(text: "Apply", onPressed: (){},),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
