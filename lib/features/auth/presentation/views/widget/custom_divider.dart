import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: primaryColor,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Or"),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      color: primaryColor,
                    ),
                  ),
                ],
              );
  }
}