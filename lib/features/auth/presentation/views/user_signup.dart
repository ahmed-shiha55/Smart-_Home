import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_divider.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';

class userSignUp extends StatelessWidget {
  const userSignUp({super.key});

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
              SizedBox(
                height: 10,
              ),
              custom_Textfiled(
                hintText: 'Email',
                icon: Icon(Icons.email),
              ),
              InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                inputDecoration: InputDecoration(
                  fillColor: secondaryColor,
                  filled: true,
                  labelText: 'Phone',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: primaryColor, width: 0.0),
                  ),
                ),
              ),
              custom_Textfiled(
                hintText: 'Password',
                icon: Icon(Icons.password),
              ),
              SizedBox(
                height: 20,
              ),
              customMaterialButton(
                text: 'Create',
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
                  Text("LogIn",
                      style: Styles.textStyle13.copyWith(
                        color: primaryColor,
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CustomDivider(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    Assets.Google,
                    width: 25,
                    height: 25,
                  ),
                  Image.asset(
                     Assets.Facebook,
                    width: 25,
                    height: 25,
                  ),
                  Image.asset(
                     Assets.Apple,
                    width: 25,
                    height: 25,
                  ),
                  Image.asset(
                    Assets.Twitter,
                    width: 25,
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
