import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_button.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_divider.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';


class LogInView extends StatelessWidget {
  const LogInView({super.key});

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
                    backgroundColor: Colors.white,
                    textColor: primaryColor,
                    text: 'User',
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  CustomButton(
                    backgroundColor: primaryColor,
                    textColor: Colors.white,
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
                hintText: 'Email',
                icon: Icon(Icons.email),
              ),
              custom_Textfiled(
                hintText: 'Password',
                icon: Icon(Icons.password),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Forget Password?",
                    style: Styles.textStyle18.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              customMaterialButton(
                text: 'Login',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Havent Account?",
                      style: Styles.textStyle13.copyWith(
                        color: Colors.grey,
                      )),
                  Text("Create new account",
                      style: Styles.textStyle13.copyWith(
                        color: primaryColor,
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
             CustomDivider(),

             SizedBox(height: 30,),

             Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey )
              
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.Finger , width: 32 ,height: 36,),
                  SizedBox(width: 10,),
                  Text("Use Fingerprint" , style: Styles.textStyle13,)
                ],
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
