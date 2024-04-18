import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';

class PassresetView extends StatelessWidget {
  const PassresetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset("assets/done.png" , width: 300,),
          Column(
                  children: [
                    Text(
                      "Congrats",
                      style: Styles.textStyle30.copyWith(
                        fontSize: 30,
                          color: primaryColor, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password reset succesful",
                      style: Styles.textStyle13
                          .copyWith(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
        ],),
      ),
    );
  }
}