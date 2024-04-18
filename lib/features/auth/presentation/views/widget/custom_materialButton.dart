import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';

class customMaterialButton extends StatelessWidget {
  String text;
  double width;
  double height;
  customMaterialButton({required this.text,  this.width=double.infinity ,this.height=80,super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
              shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
              minWidth: width,
              height: height,
              color: primaryColor,
              onPressed: (){},
             child: Text(text ,style: Styles.textStyle18.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700
             ),),);
  }
}