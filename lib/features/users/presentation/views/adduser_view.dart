import 'package:flutter/material.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';



class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: primaryColor,
                ),
                Text(
                  "Add User",
                  style: Styles.textStyle18.copyWith(color: primaryColor ),
                ),
            const    CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(Assets.Profile),
                ),
              ],
            ),

SizedBox(height: 61,),
            custom_Textfiled(hintText: 'Users', icon: Icon(Icons.person),),
            custom_Textfiled(hintText: 'Password', icon: Icon(Icons.password),),
             custom_Textfiled(hintText: 'Location', icon: Icon(Icons.location_city),),
              custom_Textfiled(hintText: 'Emergency', icon: Icon(Icons.emergency),),
    



              customMaterialButton(text: "Add" , width: double.infinity,)
        
          
           
          ],
        ),
      ),
    );
  }
}
