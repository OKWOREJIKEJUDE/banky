// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Active extends StatelessWidget {
  const Active({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "All Goals",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          CheckboxListTile(value: false, onChanged: (val){})
        ],
      ),
    );
  }
}
