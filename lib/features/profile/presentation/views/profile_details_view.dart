import 'package:flutter/material.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';
import 'package:iost/features/profile/presentation/views/widget/custom_textfiledx.dart';


class ProfileDetailsView extends StatelessWidget {
  ProfileDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          "Profile details",
          style: Styles.textStyle18.copyWith(
              fontSize: 20, fontWeight: FontWeight.w600, color: primaryColor),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: primaryColor,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(
             Assets.Profile,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          custom_Textfiledx(
            hintText: "Ahmed",
          ),
          custom_Textfiledx(
            hintText: "Ali",
          ),
          custom_Textfiledx(
            hintText: "Ahmed_Ali@gmail.com",
          ),
          custom_Textfiledx(
            hintText: "9/9/1991",
          ),
          SizedBox(
            height: 50,
          ),
          customMaterialButton(
            text: "Save",
            width: 200,
          )
        ],
      ),
    );
  }
}
