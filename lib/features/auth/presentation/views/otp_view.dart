import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';


class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "OTP Verification",
                    style: Styles.textStyle30.copyWith(
                        color: primaryColor, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We Will send you a one time password to Mobile Number",
                    style: Styles.textStyle13
                        .copyWith(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              Container(
                width: 296,
                height: 212,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: secondaryColor,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Please Enter OTP number",
                        style: Styles.textStyle13
                            .copyWith(color: Colors.grey, fontSize: 12),
                      ),
                      OtpTextField(
                        borderRadius: BorderRadius.circular(15),
                        numberOfFields: 5,
                        
                        enabledBorderColor: Colors.grey,
                        focusedBorderColor: primaryColor,
                  
                        showFieldAsBox: true,
                  
                        onCodeChanged: (String code) {},
                  
                        onSubmit: (String verificationCode) {
                          
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Resend after:",
                            style: Styles.textStyle13
                                .copyWith(color: Colors.grey, fontSize: 12),
                          ),
                          Text(
                            "3:20",
                            style: Styles.textStyle13
                                .copyWith(color: primaryColor, fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              customMaterialButton(
                text: "Next",
                width: 224,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
