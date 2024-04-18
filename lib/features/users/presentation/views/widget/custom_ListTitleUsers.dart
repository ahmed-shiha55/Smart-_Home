import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';

class CustomListTitleUsers extends StatelessWidget {
  String userName;
 CustomListTitleUsers({ required this.userName,  super.key});


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: 15.0 ,),
      child: ListTile(
       visualDensity: VisualDensity(vertical: 3),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide.none,
                ),
                tileColor: secondaryColor,
                leading: Image.asset("assets/person.png" , width: 40 , height: 40,),
                title:  Text(userName , style: Styles.textStyle13,),
                trailing:Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Image.asset("assets/delete.png" ,width: 20, height: 20,),),
                    SizedBox(width: 10,),
                   Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Image.asset("assets/edit.png" ,width: 20, height: 20,),),
                  ],
                ),
              ),
    );
  }
}