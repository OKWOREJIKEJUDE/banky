// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:banky/achieved.dart';
import 'package:banky/active.dart';
import 'package:flutter/material.dart';

class Homedetails extends StatelessWidget {
  const Homedetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          "Active",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Achieved",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 540,
                  child: TabBarView(children: [
                    Active(),
                    Achieved(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
