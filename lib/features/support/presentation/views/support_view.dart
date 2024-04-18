import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';


class SupportView extends StatelessWidget {
  const SupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios , size: 30 , color: primaryColor,),
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            SizedBox(height: 30,),
            Text("We are here to help you in anything" ,style: Styles.textStyle30.copyWith(
              color: primaryColor,
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 70,),
            customMaterialButton(text: "Send Message" , width: 300,)
          ],
        ),
      ),
      
    );
  }
}