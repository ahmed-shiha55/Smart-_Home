import 'package:flutter/material.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';


class FactoryView extends StatelessWidget {
  const FactoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(children: [
                                 custom_Textfiled(hintText: "Location", icon: Icon(Icons.location_city)),
                                custom_Textfiled(hintText: "The number of laps", icon: Icon(Icons.south_america)),
                                custom_Textfiled(hintText: "The number of machine", icon: Icon(Icons.mark_chat_read)),
                      
                             ],);
  }
}