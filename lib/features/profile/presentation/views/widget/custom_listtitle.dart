import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';

class CustomListTitle extends StatefulWidget {
  String text;
  String image;
  Function tap;
  bool back;
  Color  background;
 CustomListTitle({ required this.text , required this.image, required this.tap,required this.back ,required this.background, super.key});

  @override
  State<CustomListTitle> createState() => _CustomListTitleState();
}


class _CustomListTitleState extends State<CustomListTitle> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    

    return Padding(
      padding: const EdgeInsets.all(15),
      child: ListTile(
        
        
        onTap: widget.tap(),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  tileColor: widget.background,
                  leading: Image.asset(widget.image),
                  title: Text(widget.text),
                  trailing:widget.back?Icon(Icons.arrow_back_ios): CupertinoSwitch(
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  print(value);
                  _switchValue = !_switchValue;
                });
              },
            ),
                  minVerticalPadding:20,
                ),
    );
  }
}