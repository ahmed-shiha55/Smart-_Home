import 'package:flutter/material.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';


class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
                                 custom_Textfiled(hintText: "Location", icon: Icon(Icons.location_city)),
                                custom_Textfiled(hintText: "The number of rooms", icon: Icon(Icons.south_america)),
                              
                      
                             ],);
  }
}
