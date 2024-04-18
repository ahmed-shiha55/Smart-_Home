import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iost/core/utlits/colors.dart';

class custom_Textfiled extends StatelessWidget {

String hintText;
   Icon icon;
   
   custom_Textfiled({required this.hintText , required this.icon ,super.key});

   

  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              
              child: TextFormField(
                style: TextStyle(color: secondaryColor),
                onChanged: (value) {},
                decoration: InputDecoration(
                  fillColor: secondaryColor,
                  filled: true,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: icon,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: primaryColor, width: 0.0),
                  ),
                ),
              ),
            );
  }
}