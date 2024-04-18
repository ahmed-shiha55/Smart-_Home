import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';

class CustomPasswordChecker extends StatelessWidget {
  String text;
  bool active;
  CustomPasswordChecker({required this.text, this.active=false, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 5),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color:active? primaryColor:Colors.grey),
        ),
        SizedBox(
          width: 5,
        ),
        Text(text , style: TextStyle(color: active?Colors.black : Colors.grey),),
      ],
    );
  }
}
