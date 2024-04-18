import 'dart:html';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iost/core/utlits/assets.dart';
import 'package:iost/core/utlits/colors.dart';
import 'package:iost/core/utlits/styles.dart';
import 'package:iost/features/home/presentation/views/widget/home_view.dart';
import 'package:iost/features/home/presentation/views/widget/store_view.dart';
import 'package:iost/features/home/presentation/views/widget/factory_view.dart';
import 'package:iost/features/home/presentation/views/widget/CustomProject.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_textfiled.dart';
import 'package:iost/features/auth/presentation/views/widget/custom_materialButton.dart';



class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List<dynamic> pages = [
    HomeView(),
    FactoryView(),
    StoreView(),
  ];
  int index = 1;
  Widget build(BuildContext context) {
    print(index);
    return Scaffold(
      floatingActionButton: Container(
        height: 50,
        width: 50,
        margin: EdgeInsets.only(bottom: 30, right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: primaryColor),
        child: IconButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return Container(
                      height: 1000,
                      width: double.infinity,
                      color: Colors
                          .transparent, 
                     
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Image.asset(
                             Assets.Bottomarrow,
                              width: 40,
                              height: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              child: Column(
                                children: [
                                  custom_Textfiled(
                                      hintText: "ProjectName",
                                      icon: Icon(Icons.category_outlined)),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: primaryColor, width: 2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 120,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                index = 0;
                                              });
                                            },
                                            style: TextButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  0,
                                                ),
                                              ),
                                              backgroundColor: index == 0
                                                  ? primaryColor
                                                  : secondaryColor,
                                            ),
                                            child: Text(
                                              "Home",
                                              style:
                                                  Styles.textStyle18.copyWith(
                                                color: index == 0
                                                    ? Colors.white
                                                    : primaryColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 120,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                index = 1;
                                              });
                                            },
                                            style: TextButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  0,
                                                ),
                                              ),
                                              backgroundColor: index == 1
                                                  ? primaryColor
                                                  : secondaryColor,
                                            ),
                                            child: Text(
                                              "Factory",
                                              style:
                                                  Styles.textStyle18.copyWith(
                                                color: index == 1
                                                    ? Colors.white
                                                    : primaryColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 120,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                index = 2;
                                              });
                                            },
                                            style: TextButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  0,
                                                ),
                                              ),
                                              backgroundColor: index == 2
                                                  ? primaryColor
                                                  : secondaryColor,
                                            ),
                                            child: Text(
                                              "Store",
                                              style:
                                                  Styles.textStyle18.copyWith(
                                                color: index == 2
                                                    ? Colors.white
                                                    : primaryColor,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  pages[index],
                                  customMaterialButton(
                                    text: "Add Project",
                                    width: double.infinity,
                                    height: 60,
                                  ),
                                  SizedBox(
                                    height: 100,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
                });
          },
          icon: Icon(Icons.add),
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage( Assets.Avatar),
                ),
                SizedBox(width: 20),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 10),
                      Text("Hello",
                          style:
                              Styles.textStyle30.copyWith(color: primaryColor)),
                      // SizedBox(height: 10),
                      Text(
                        "Ahmed shiha",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                    ]),
              ]),
              Image.asset(
                 Assets.Logout,
                width: 60,
                height: 50,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(children: [
            Expanded(
                child: Text(
              "Projects",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            )),
            Image.asset(
               Assets.Catgory,
              width: 30,
              height: 50,
            ),
          ]),
          SizedBox(height: 20),
          CustomProject(
            mainimage: Assets.Home1,
            image1: Assets.Sensor,
            image2: Assets.Air,
            projectName: 'Home',
            image3: Assets.Lamp,
            numberOfDevice: '3 Devices',
          ),
          SizedBox(
            height: 15,
          ),
          CustomProject(
            mainimage: Assets.Home2,
            image1: Assets.Sensor,
            image2: Assets.Air,
            projectName: 'Home 2',
            image3: Assets.Lamp,
            numberOfDevice: '3 Devices',
          ),
          SizedBox(
            height: 15,
          ),
          CustomProject(
            mainimage: Assets.Factory,
            image1: Assets.Sensor,
            image2: Assets.Air,
            projectName: 'Factory',
            image3: Assets.Lamp,
            numberOfDevice: '3 Devices',
          ),
        ]),
      ),
    );
  }
}
