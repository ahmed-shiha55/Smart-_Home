import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';


class RecoveryView extends StatelessWidget {
  const RecoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: Icon(
            Icons.arrow_back_ios,
            size: 40,
            color: primaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "Forgot password?",
                  style: Styles.textStyle30.copyWith(
                      color: primaryColor, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10,),
                Text(
                  "Select which contact details should we use to reset your password",
                  style: Styles.textStyle13
                      .copyWith(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
              child: Column(
                children: [
                  custom_Textfiled(
                    hintText: "Via Sms",
                    icon: Icon(
                      Icons.sms,
                      color: primaryColor,
                    ),
                  ),
                  custom_Textfiled(
                    hintText: "Via Email",
                    icon: Icon(Icons.email, color: primaryColor),
                  ),
                ],
              ),
            ),
            customMaterialButton(text: "Next" ,width: 224,),
          ],
        ),
      ),
    );
  }
}
