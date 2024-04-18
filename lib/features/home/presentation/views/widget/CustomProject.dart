import 'package:flutter/material.dart';
import 'package:iost/core/utlits/colors.dart';

class CustomProject extends StatelessWidget {
  String mainimage;
  String image1;
  String image2;
  String image3;
  String projectName;
  String numberOfDevice;

  CustomProject(
      {required this.mainimage,
      required this.image1,
      required this.image2,
      required this.projectName,
      required this.image3,
      required this.numberOfDevice,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.passthrough,
      children: [
        Image.asset(
          mainimage,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  deviceColor,
                  Color.fromARGB(50, 50, 0, 0)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                    projectName,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    numberOfDevice,
                    style:const TextStyle(
                      fontSize: 15,
                   fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        image1,
                        width: 23,
                        height: 23,
                       
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        image2,
                        width: 23,
                        height: 23,
                       
                      ),
                    ),
                    SizedBox(width: 10),
                   Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        image3,
                        width: 23,
                        height: 23,
                       
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
