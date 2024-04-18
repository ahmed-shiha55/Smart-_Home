import 'package:flutter/material.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/profile/presentation/views/widget/custom_listtitle.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: primaryColor,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(Assets.Profile),
              ),
              Text(
                "Ahmed Ali",
                style: Styles.textStyle30.copyWith(color: primaryColor),
              ),
              Text("Ahmed_Ali@gmail.com", style: Styles.textStyle13),
              SizedBox(height: 20,),
              CustomListTitle(
                  text: "Profile Details",
                  image: Assets.Person,
                  tap: () {},
                  back: true, background: secondaryColor,),
              CustomListTitle(
                  text: "Users",
                  image: Assets.Group,
                  tap: () {},
                  back: true,background: secondaryColor,),
              CustomListTitle(
                  text: "Settings",
                  image: Assets.Setting,
                  tap: () {},
                  back: true,background: secondaryColor,),
              CustomListTitle(
                  text: "Push Notifications",
                  image: Assets.Notification,
                  tap: () {},
                  back: true,background: secondaryColor,),

                  
              CustomListTitle(
                  text: "Support",
                  image:Assets.Support,
                  tap: () {},
                  back: false,background: secondaryColor,),
              CustomListTitle(
                  text: "Logout",
                  image: Assets.Logout,
                  tap: () {},
                  back: true,background: Colors.red.withOpacity(0.2),)
            ],
          ),
        ),
      ),
    );
  }
}
