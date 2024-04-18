import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iost/core/utlits/colors.dart';

class custom_Textfiledx extends StatelessWidget {

String hintText;

   
   custom_Textfiledx({required this.hintText  ,super.key});

   

  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.symmetric(vertical: 15 , horizontal: 50),
              
              child: TextFormField(
                style: TextStyle(color: secondaryColor),
                onChanged: (value) {},
                decoration: InputDecoration(
                  
                  
                  fillColor: secondaryColor,
                  filled: true,
                  hintText: hintText ,
                  hintStyle: TextStyle(color: Colors.black),
                 
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                ),
              ),
            );
  }
}