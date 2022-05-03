// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  // image: DecorationImage(
                  //     image: AssetImage(myDatas.imageURL), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100))),
            ),
          ],
        ),
      ],
    ));
  }
}
