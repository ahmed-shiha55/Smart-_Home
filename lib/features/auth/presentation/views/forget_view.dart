import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_passwordChecker.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';


class ForgetView extends StatelessWidget {
  const ForgetView({super.key});

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
                  "Reset your password here",
                  style: Styles.textStyle30.copyWith(
                      fontSize: 28,
                      color: primaryColor,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter new Password and confirm it",
                  style: Styles.textStyle13
                      .copyWith(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          
           Column(children: [
             custom_Textfiled(
              hintText: 'Password',
              icon: Icon(Icons.password),
            ),
            custom_Textfiled(
              hintText: 'Password',
              icon: Icon(Icons.password),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomPasswordChecker(text: 'One Number' , active: true,),
                    CustomPasswordChecker(text: 'One lowercase character'),
                    CustomPasswordChecker(text: '10 character minimun'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomPasswordChecker(text: 'One Special character'),
                    CustomPasswordChecker(text: 'One Uppercase character'),
                  
                  ],
                ),
              ],
            ),
           ],),

            customMaterialButton(
              text: 'Next',
              width: 292,
            )
          ],
        ),
      ),
    );
  }
}
