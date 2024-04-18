import 'package:flutter/material.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';



class editUserView extends StatelessWidget {
  const editUserView({super.key});

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
                  "Edit User",
                  style: Styles.textStyle18.copyWith(color: primaryColor ),
                ),
            const    CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(Assets.Profile),
                ),
              ],
            ),

SizedBox(height: 61,),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                  custom_Textfiled(hintText: 'Mohamed Ahmed', icon: Icon(Icons.person),),
              custom_Textfiled(hintText: '0124548494989', icon: Icon(Icons.password),),
               custom_Textfiled(hintText: 'egypt, cairto, aswan', icon: Icon(Icons.location_city),),
                custom_Textfiled(hintText: 'Emergency', icon: Icon(Icons.emergency),),
                custom_Textfiled(hintText: '532511', icon: Icon(Icons.code),),
                
            
            
            
                customMaterialButton(text: "Update" , width: double.infinity,)
                    
              ],
            ),
          )
          
           
          ],
        ),
      ),
    );
  }
}
