import 'package:flutter/material.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/users/presentation/views/widget/custom_ListTitleUsers.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
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
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    Assets.Profile,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: primaryColor, width: 2)),
                        hintText: 'Search...',
                        suffixIcon: Icon(
                          Icons.search,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                Container(
                  padding: EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(7)),
                  child: Icon(Icons.add),
                ),
              ],
            ),
            SizedBox(
              height: 38,
            ),
            CustomListTitleUsers(
              userName: 'Ahmed Shiha',
            ),
            CustomListTitleUsers(
              userName: 'Ahmed Shiha',
            ),
            CustomListTitleUsers(
              userName: 'Ahmed Shiha',
            ),
            CustomListTitleUsers(
              userName: 'Ahmed Shiha',
            ),
            CustomListTitleUsers(
              userName: 'Ahmed Shiha',
            ),
          ],
        ),
      ),
    );
  }
}
