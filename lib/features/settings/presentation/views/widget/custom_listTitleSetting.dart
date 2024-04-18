import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';

class CustomListTitleSetting extends StatefulWidget {
  String userName;
  bool back;
  CustomListTitleSetting(
      {required this.userName, required this.back, super.key});

  @override
  State<CustomListTitleSetting> createState() => _CustomListTitleSettingState();
}

class _CustomListTitleSettingState extends State<CustomListTitleSetting> {
  @override
  Widget build(BuildContext context) {
    bool _switchValue = true;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.0,
      ),
      child: ListTile(
        visualDensity: VisualDensity(vertical: 3),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        tileColor: secondaryColor,
        title: Text(
          widget.userName,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: widget.back
            ? Icon(
                Icons.arrow_back_ios,
                textDirection: TextDirection.rtl,
              )
            : CupertinoSwitch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    print(value);
                    _switchValue = !_switchValue;
                  });
                },
              ),
      ),
    );
  }
}
