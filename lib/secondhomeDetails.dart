// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:banky/model/datas.dart';
import 'package:flutter/material.dart';

class SecondHomeDetails extends StatefulWidget {
  const SecondHomeDetails({Key? key}) : super(key: key);

  @override
  State<SecondHomeDetails> createState() => _SecondHomeDetailsState();
}

class _SecondHomeDetailsState extends State<SecondHomeDetails>
    with TickerProviderStateMixin {
  bool mycheck = false;
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 8, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: TabBar(
                    controller: tabController,
                    isScrollable: true,
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.blue,
                    indicator: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.purple,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.05),
                          spreadRadius: .5,
                          blurRadius: .5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    indicatorColor: Colors.yellow,
                    tabs: [
                      Tab(
                        child: Text("Active",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Achieved",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("New",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Later",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Virws",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Liked",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Disliked",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      Tab(
                        child: Text("Closed",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                height: double.maxFinite,
                child: TabBarView(controller: tabController, children: [
                  //Text("active"),
                  Container(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "All Goals",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: double.maxFinite,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: listData.length,
                            itemBuilder: (context, index) {
                              MyDatas myDatas = listData[index];
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(myDatas.imageURL),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        myDatas.myTitle,
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  ),
                                  Checkbox(
                                      value: mycheck,
                                      onChanged: (newValue) {
                                        setState(() {
                                          mycheck = newValue!;
                                          if (mycheck) {
                                          } else {}
                                        });
                                      }),
                                ],
                              );
                            }),
                      )
                    
                    ],
                  )),

                  Container(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/frame1.png"),
                      SizedBox(
                        height: 40,
                      ),
                      Text("achieved"),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset("assets/master1.png"),
                      SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/master1.png"),
                      SizedBox(
                        height: 40,
                      ),
                      Text("achieved"),
                      SizedBox(
                        height: 50,
                      ),
                      Image.asset("assets/frame1.png")
                    ],
                  )),
                  Text("New"),
                  Text("Later"),
                  Text("Views"),
                  Text("Liked"),
                  Text("Disliked"),
                  Text("Closed"),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
