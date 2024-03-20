import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_tim6/widget/custom_button.dart';
import 'package:slicing_tim6/widget/custom_text_field.dart';

import '../widget/custom_date_picker.dart';
import '../widget/custom_gender_dropdown.dart';

class FillProfile extends StatefulWidget {



  @override
  State<FillProfile> createState() => _FillProfileState();
}

class _FillProfileState extends State<FillProfile> {
  TextEditingController txtNama = TextEditingController();
  TextEditingController txtNicName = TextEditingController();
  TextEditingController txtDate = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  String? txtGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(width: 8.0), // Atur jarak antara IconButton dan teks
            Text(
              'Fill Your Profile',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100]
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[100], // Ganti warna lingkaran sesuai kebutuhan
                    ),
                    child: Center(
                      child: Image.asset('assets/images/ic_profile.png'), // Ganti dengan gambar yang diinginkan
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.blue, // Ganti warna ikon sesuai kebutuhan
                        size: 20, // Ganti ukuran ikon sesuai kebutuhan
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              CustomTextField(
                controller: txtNama,
                hintText: "Full Name",
              ),
              SizedBox(height: 20,),
              CustomTextField(
                controller: txtNicName,
                hintText: "Nick Name",
              ),
              SizedBox(height: 20,),
              CustomDatePicker(
                hintText: 'Date Of Birth',
                controller: txtDate,
                icon: Icons.date_range,
              ),
              SizedBox(height: 20,),
              CustomTextField(
                controller: txtEmail,
                hintText: "Email",
                icon: Icons.mail_outline,
              ),
              SizedBox(height: 20,),
              CustomTextField(
                controller: txtPhone,
                hintText: "Phone Number",
                icon: Icons.flag_outlined,
              ),
              SizedBox(height: 20,),
              CustomGenderDropdown(
                hintText: 'Gender',
                value: txtGender,
                onChanged: (value) {
                  setState(() {
                    txtGender = value;
                  });
                },
              ),
              SizedBox(height: 20,),
              CustomButton(
                text: "Continue",
                onPressed:(){

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
