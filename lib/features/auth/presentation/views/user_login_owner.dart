import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_button.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';


class LogInViewOwner extends StatelessWidget {
  const LogInViewOwner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset(
                Assets.Logo,
                width: 284,
                height: 284,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    backgroundColor: primaryColor,
                    textColor: Colors.white,
                    text: 'User',
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  CustomButton(
                    backgroundColor: Colors.white,
                    textColor: primaryColor,
                    text: 'Owner',
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              custom_Textfiled(
                hintText: 'UserName',
                icon: Icon(Icons.person),
              ),
              custom_Textfiled(
                hintText: 'Email',
                icon: Icon(Icons.email),
              ),
              custom_Textfiled(
                hintText: 'Password',
                icon: Icon(Icons.password),
              ),
              
              SizedBox(
                height: 20,
              ),
              customMaterialButton(
                text: 'Login',
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
