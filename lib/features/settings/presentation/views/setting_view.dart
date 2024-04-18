import 'package:flutter/material.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';

import 'widget/custom_listTitleSetting.dart';


class SettingView extends StatelessWidget {
  const SettingView({super.key});

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
                  "Settings",
                  style: Styles.textStyle18.copyWith(color: primaryColor ),
                ),
            const    CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(Assets.Avatar),
                ),
              ],
            ),
        
            SizedBox(height: 129,),



           CustomListTitleSetting(userName: 'Dark Mode', back: false,),

           Divider(),
           CustomListTitleSetting(userName: 'About Us', back: true,),
           CustomListTitleSetting(userName: 'Privacy Policy', back: true,),
           CustomListTitleSetting(userName: 'Terms and conditions', back: true,),
           
          ],
        ),
      ),
    );
  }
}
